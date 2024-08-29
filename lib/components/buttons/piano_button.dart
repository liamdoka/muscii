import 'package:flutter/material.dart';
import 'package:muscii/constants/styles.dart';
import 'package:muscii/utils/notation.dart';

class PianoButton extends StatefulWidget {

  final NoteName? note;
  final bool isTopRow;
  final bool isAnnotated;
  final VoidCallback? onTap;

  static const keySize = 40.0;

  const PianoButton({super.key, required this.note, this.isAnnotated = false, this.isTopRow = false, this.onTap});

  @override
  _PianoButtonState createState() => _PianoButtonState();
}

class _PianoButtonState extends State<PianoButton> with SingleTickerProviderStateMixin{
  static const clickAnimationDurationMillis = 50;
  double _offsetTransformValue = buttonShadowOffset;
  late final AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: clickAnimationDurationMillis),
      lowerBound: 0.0,
      upperBound: buttonShadowOffset,
    )..addListener(() {
      setState(() => _offsetTransformValue = buttonShadowOffset - animationController.value);
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void _shrinkButtonSize() {
    animationController.forward();
  }

  void _restoreButtonSize() async {
    if (animationController.isCompleted) {
      animationController.reverse();
    } else {
      animationController.forward().whenComplete(animationController.reverse);
    }
  }

  @override
  Widget build(BuildContext context) {

    final calculatedColor = widget.isTopRow ? primaryColor[700]! : primaryColor[300]!;
    final textColour =  widget.isTopRow ? primaryColor[50]! : primaryColor[950]!;

    return Container(
      margin: const EdgeInsets.all(2.0),
      child: widget.note == null
          ? const SizedBox(width: PianoButton.keySize, height: 2 * PianoButton.keySize,)
          : GestureDetector(
        onTapDown: (_) => _shrinkButtonSize(),
        onTapCancel: () => _restoreButtonSize(),
        onTapUp: (_) {
          widget.onTap?.call();
          print("KEYPRESSED: ${widget.note?.formattedName}");
          _restoreButtonSize();
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                border: Border.all(
                  color: calculatedColor,
                  width: 2
                ),
                color: calculatedColor,
              ),
              child: const SizedBox(
                  width: PianoButton.keySize,
                  height: 2 * PianoButton.keySize
              ),
            ),
            Transform.translate(
              offset: Offset(0, - _offsetTransformValue),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: calculatedColor,
                    width: 2
                  ),
                  borderRadius: BorderRadius.circular(16.0),
                  color: widget.isTopRow ? primaryColor[600] : primaryColor[50],
                ),
                child: SizedBox(
                    width: PianoButton.keySize,
                    height: 2 * PianoButton.keySize,
                    child: (widget.isAnnotated) && (widget.note != null)
                        ? Center(
                      child: Text(widget.note?.formattedName ?? "",
                        style: TextStyle(
                            color: textColour,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0
                        ),
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