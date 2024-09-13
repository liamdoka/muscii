import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:muscii/components/buttons/answer_button_piano.dart';
import 'package:muscii/constants/styles.dart';
import 'package:muscii/game/game_types/reading_game_provider.dart';

@RoutePage()
class GamePage extends ConsumerWidget {

  const GamePage({ super.key });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final gameModel = ref.watch(readingGameProvider).value;
    final currentQuestion = gameModel?.questions.first;

    final maxWidth = MediaQuery.of(context).size.width;

    final Widget svg = currentQuestion != null
        ? SvgPicture.string(
            currentQuestion.staff.toSvg(),
            width: maxWidth,
            height: maxWidth,
            colorFilter: ColorFilter.mode(
                primaryColor[700]!,
                BlendMode.srcIn
            ),
          )
        : const SizedBox.shrink();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz!'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.close, size: 24)
        ),
        actions: [
          IconButton(onPressed: () {} , icon: const Icon(Icons.volume_off))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (currentQuestion != null)
              Text(currentQuestion.prompt,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: accentColor[700],
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: svg
            ),
            if (currentQuestion != null)
              AnswerButtonPiano(correctKey: currentQuestion.staff.notes.first.first, isAnnotated: true),
            const Spacer(),
            Text('help',
              style: TextStyle(
                  fontSize: 16,
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