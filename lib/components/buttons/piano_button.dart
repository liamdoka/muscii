import 'package:flutter/material.dart';
import 'package:muscii/components/muscii_compress_button.dart';
import 'package:muscii/constants/styles.dart';
import 'package:muscii/utils/notation.dart';

class PianoButton extends StatefulWidget {
  final NoteName? note;
  final bool isTopRow;
  final bool isAnnotated;
  final VoidCallback? onTap;
  final double keySize;

  const PianoButton(
      {super.key,
      required this.note,
      this.isAnnotated = false,
      this.isTopRow = false,
      this.onTap,
      this.keySize = 40.0});

  @override
  State<PianoButton> createState() => _PianoButtonState();
}

class _PianoButtonState extends MusciiCompressButton<PianoButton> {
  @override
  Widget build(BuildContext context) {
    final calculatedColor = widget.isTopRow ? primaryColor[700]! : primaryColor[300]!;
    final textColour = widget.isTopRow ? primaryColor[50]! : primaryColor[950]!;

    return Container(
      padding: const EdgeInsets.all(2.0),
      child: widget.note == null
          ? SizedBox(width: widget.keySize, height: 2 * widget.keySize)
          : GestureDetector(
              onTapDown: (_) => shrinkButtonSize(),
              onTapCancel: () => restoreButtonSize(),
              onTapUp: (_) {
                widget.onTap?.call();
                restoreButtonSize();
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(color: calculatedColor, width: 2),
                      color: calculatedColor,
                    ),
                    child: SizedBox(
                      width: widget.keySize,
                      height: 2 * widget.keySize
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(0, -offsetTransformValue),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: calculatedColor, width: 2),
                        borderRadius: BorderRadius.circular(16.0),
                        color: widget.isTopRow
                          ? primaryColor[600]
                          : primaryColor[50],
                      ),
                      child: SizedBox(
                          width: widget.keySize,
                          height: 2 * widget.keySize,
                          child: (widget.isAnnotated) && (widget.note != null)
                            ? Center(
                                child: Text(
                                  widget.note?.formattedName ?? "",
                                  style: TextStyle(
                                      color: textColour,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0),
                                ),
                              )
                            : const SizedBox.shrink()
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
