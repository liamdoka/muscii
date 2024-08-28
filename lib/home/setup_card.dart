import 'package:flutter/material.dart';
import 'package:muscii/constants/styles.dart';

class SetupCard extends StatefulWidget {

  final String title;
  final IconData? icon;
  final VoidCallback onTap;

  const SetupCard({ super.key, required this.title, required this.onTap, this.icon});

  @override
  _SetupCardState createState() => _SetupCardState();
}

class _SetupCardState extends State<SetupCard> with SingleTickerProviderStateMixin {
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
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 24 + 92 + 20 + 24 + 8 + 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: primaryColor[300],
            ),
          ),
          GestureDetector(
            onTapDown: (_) => _shrinkButtonSize(),
            onTapCancel: () => _restoreButtonSize(),
            onTapUp: (_) {
              widget.onTap.call();
              _restoreButtonSize();
            },
            child: Transform.translate(
              offset: Offset(0, - _offsetTransformValue),
              child: Container(
                padding: const EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  color: primaryColor[50],
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                      width: 2,
                      color: primaryColor[300]!
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(widget.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20
                      ),
                    ),
                    Icon(widget.icon ?? Icons.queue_music,
                      size: 92
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}