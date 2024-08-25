import 'package:flutter/material.dart';
import 'package:muscii/constants/styles.dart';

class SetupCard extends StatelessWidget {

  final String title;
  final IconData? icon;
  final Function? onPressed;

  const SetupCard({ super.key, required this.title, this.onPressed, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: primaryColor[50],
        boxShadow: [
          BoxShadow(
            color: primaryColor[300]!,
            blurRadius: 4,
            offset: const Offset(0, 4)
          )
        ]
      ),
      margin: const EdgeInsets.all(8.0),
      constraints: const BoxConstraints(
        minWidth: 200,
        minHeight: 200
      ),
      child: GestureDetector(
        onTap: () {
          if (onPressed != null) {
            onPressed!();
          }
        },
        child: Container(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(title,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20
                ),
              ),
              Icon(icon ?? Icons.queue_music,
                size: 92
              ),
            ],
          ),
        ),
      ),
    );
  }
}