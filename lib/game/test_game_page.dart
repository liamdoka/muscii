import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:muscii/components/buttons/answer_button_piano.dart';
import 'package:muscii/constants/styles.dart';
import 'package:muscii/constants/svg_strings.dart';
import 'package:muscii/game/models/staff_model.dart';
import 'package:muscii/utils/notation.dart';

class TestGamePage extends StatelessWidget {

  const TestGamePage({ super.key });

  @override
  Widget build(BuildContext context) {

    final maxWidth = MediaQuery.of(context).size.width;

    const note = NoteModel(name: NoteName.f, octave: 5);
    final Widget svg = SvgPicture.string(
      buildStaff(offset: mapNoteToOffset(note, KeyName.c_maj)),
      width: maxWidth,
      height: maxWidth,
      colorFilter: ColorFilter.mode(
        primaryColor[800]!,
        BlendMode.srcIn
      ),
    );

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
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: svg
            ),
            const AnswerButtonPiano(correctKey: 4, isAnnotated: true),
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