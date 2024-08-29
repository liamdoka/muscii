import 'package:flutter/material.dart';
import 'package:muscii/constants/styles.dart';
import 'package:muscii/components/buttons/answer_button_fat.dart';
import 'package:muscii/components/buttons/answer_button_long.dart';

class GamePage extends StatelessWidget {

  const GamePage({ super.key });

  @override
  Widget build(BuildContext context) {

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
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AnswerButtonLong(text: '1'),
                AnswerButtonLong(text: '2'),
                AnswerButtonLong(text: '3'),
                AnswerButtonLong(text: '4'),
              ],
            ),
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