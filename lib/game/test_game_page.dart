import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:muscii/constants/styles.dart';
import 'package:muscii/game/answer_button_fat.dart';

class TestGamePage extends StatelessWidget {

  const TestGamePage({ super.key });

  @override
  Widget build(BuildContext context) {

    final maxWidth = MediaQuery.of(context).size.width;
    const String assetName = 'lib/assets/c_maj/singles/a.svg';
    final Widget svg = SvgPicture.asset(
      assetName,
      width: maxWidth,
      height: maxWidth,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz!'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.close, size: 24)
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
        color: primaryColor[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('HERE IT IS'),
            Expanded(child: svg),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnswerButtonFat(text: 'A'),
                    AnswerButtonFat(text: 'B')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnswerButtonFat(text: 'C'),
                    AnswerButtonFat(text: 'D')
                  ],
                )
              ],
            ),
            Text('help',
              style: TextStyle(
                  color: primaryColor[500],
                  decoration: TextDecoration.underline
              ),
            )
          ],
        ),
      ),
    );
  }
}