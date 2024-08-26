import 'package:flutter/material.dart';
import 'package:muscii/constants/styles.dart';

class MusciiHeading extends StatelessWidget {

  const MusciiHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('MUSCII',
            style: headerTextStyle.copyWith(color: accentColor[800])
        ),
        Text('get gooder at music notation',
          style: TextStyle(
            color: primaryColor[500],
            fontSize: 16,
          ),
        )
      ],
    );
  }
}