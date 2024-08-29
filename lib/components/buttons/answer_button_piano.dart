import 'package:flutter/material.dart';
import 'package:muscii/components/buttons/piano_button.dart';
import 'package:muscii/utils/notation.dart';

class AnswerButtonPiano extends StatefulWidget {

  final int correctKey;
  final bool isAnnotated;

  const AnswerButtonPiano({super.key, required this.correctKey, this.isAnnotated = false});

  @override
  _AnswerButtonPianoState createState() => _AnswerButtonPianoState();
}

class _AnswerButtonPianoState extends State<AnswerButtonPiano> {
  @override
  Widget build(BuildContext context) {

    // TODO: piano button width from mediaquery

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PianoButton(note: NoteName.c_sharp, isTopRow: true, isAnnotated: widget.isAnnotated),
            PianoButton(note: NoteName.d_sharp, isTopRow: true, isAnnotated: widget.isAnnotated),
            const PianoButton(note: null), // empty button
            PianoButton(note: NoteName.f_sharp, isTopRow: true, isAnnotated: widget.isAnnotated),
            PianoButton(note: NoteName.g_sharp, isTopRow: true, isAnnotated: widget.isAnnotated),
            PianoButton(note: NoteName.a_sharp, isTopRow: true, isAnnotated: widget.isAnnotated),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PianoButton(note: NoteName.c, isAnnotated: widget.isAnnotated),
            PianoButton(note: NoteName.d, isAnnotated: widget.isAnnotated),
            PianoButton(note: NoteName.e, isAnnotated: widget.isAnnotated),
            PianoButton(note: NoteName.f, isAnnotated: widget.isAnnotated),
            PianoButton(note: NoteName.g, isAnnotated: widget.isAnnotated),
            PianoButton(note: NoteName.a, isAnnotated: widget.isAnnotated),
            PianoButton(note: NoteName.b, isAnnotated: widget.isAnnotated),
          ],
        ),
      ],
    );
  }
}
