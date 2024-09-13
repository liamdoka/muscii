import 'package:flutter/material.dart';
import 'package:muscii/components/muscii_compress_button.dart';
import 'package:muscii/constants/styles.dart';

class AnswerButtonLong extends StatefulWidget {

  final String text;
  final VoidCallback? onTap;

  const AnswerButtonLong({ super.key, required this.text, this.onTap });

  @override
  State<AnswerButtonLong> createState() => _AnswerButtonLongState();
}

class _AnswerButtonLongState extends MusciiCompressButton<AnswerButtonLong> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: longButtonHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: primaryColor[300],
            ),
          ),
          GestureDetector(
            onTapDown: (_) => shrinkButtonSize(),
            onTapCancel: () => restoreButtonSize(),
            onTapUp: (_) {
              widget.onTap?.call();
              restoreButtonSize();
            },
            child: Transform.translate(
              offset: Offset(0, - offsetTransformValue),
              child: Container(
                height: longButtonHeight,
                decoration: BoxDecoration(
                  color: primaryColor[50],
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                      width: 2,
                      color: primaryColor[300]!
                  ),
                ),
                child: Center(
                  child: Text(widget.text,
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: primaryColor[950]
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}