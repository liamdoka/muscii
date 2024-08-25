import 'package:flutter/material.dart';
import 'package:muscii/constants/styles.dart';

class AnswerButtonFat extends StatefulWidget {

  final String text;
  final VoidCallback? onTap;

  const AnswerButtonFat({ super.key, required this.text, this.onTap });

  @override
  _AnswerButtonFatState createState() => _AnswerButtonFatState();
}

class _AnswerButtonFatState extends State<AnswerButtonFat>
  with SingleTickerProviderStateMixin
{
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
                color: primaryColor[400],
              ),
            ),
            GestureDetector(
              onTapDown: (_) => _shrinkButtonSize(),
              onTapUp: (_) {
                widget.onTap?.call();
                _restoreButtonSize();
              },
              onTapCancel: () => _restoreButtonSize(),
              child: Transform.translate(
                offset: Offset(0, - _offsetTransformValue),
                child: Container(
                  height: fatButtonHeight,
                  decoration: BoxDecoration(
                      color: primaryColor[50],
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                          width: 2,
                          color: primaryColor[400]!
                      ),
                  ),
                  child: Center(
                    child: Text(widget.text),
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