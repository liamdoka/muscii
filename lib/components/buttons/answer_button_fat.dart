import 'package:flutter/material.dart';
import 'package:muscii/components/muscii_compress_button.dart';
import 'package:muscii/constants/styles.dart';

class AnswerButtonFat extends StatefulWidget {

  final String text;
  final bool? isCorrect;
  final VoidCallback? onTap;

  const AnswerButtonFat({ super.key, required this.text, this.isCorrect, this.onTap });

  @override
  State<AnswerButtonFat> createState() => _AnswerButtonFatState();
}

class _AnswerButtonFatState extends MusciiCompressButton<AnswerButtonFat> {
  bool isRevealed = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: fatButtonHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: primaryColor[300],
              ),
            ),
            GestureDetector(
              onTapDown: (_) => shrinkButtonSize(),
              onTapUp: (_) {
                widget.onTap?.call();
                isRevealed = true;
                restoreButtonSize();
              },
              onTapCancel: () => restoreButtonSize(),
              child: Transform.translate(
                offset: Offset(0, - offsetTransformValue),
                child: Container(
                  height: fatButtonHeight,
                  decoration: BoxDecoration(
                      color: isRevealed
                          ? widget.isCorrect ?? false
                            ? Colors.green
                            : Colors.red
                          : primaryColor[50],
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                          width: 2,
                          color: primaryColor[300]!
                      ),
                  ),
                  child: Center(
                    child: Text(widget.text,
                      style: TextStyle(
                        fontSize: 20.0,
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
      ),
    );
  }
}