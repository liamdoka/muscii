
import 'package:flutter/material.dart';
import 'package:muscii/constants/styles.dart';

abstract class MusciiCompressButton<T extends StatefulWidget> extends State<T> with SingleTickerProviderStateMixin {
  static const clickAnimationDurationMillis = 50;
  double offsetTransformValue = buttonShadowOffset;
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
      setState(() => offsetTransformValue = buttonShadowOffset - animationController.value);
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void shrinkButtonSize() {
    animationController.forward();
  }

  void restoreButtonSize() async {
    if (animationController.isCompleted) {
      animationController.reverse();
    } else {
      animationController.forward().whenComplete(animationController.reverse);
    }
  }
}
