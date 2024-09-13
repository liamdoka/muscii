import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muscii/components/buttons/piano_button.dart';
import 'package:muscii/data/staves/staff_provider.dart';
import 'package:muscii/game/game_types/reading_game_provider.dart';
import 'package:muscii/data/staves/staff_model.dart';
import 'package:muscii/utils/notation.dart';

class AnswerButtonPiano extends ConsumerStatefulWidget {

  final NoteModel correctKey;
  final bool isAnnotated;

  const AnswerButtonPiano({super.key, required this.correctKey, this.isAnnotated = true});

  @override
  ConsumerState<AnswerButtonPiano> createState() => _AnswerButtonPianoState();
}

class _AnswerButtonPianoState extends ConsumerState<AnswerButtonPiano> {

  Future<void> _handleNotePressed(bool isCorrect) async {

    ref.read(readingGameProvider.notifier).submitAnswer(isCorrect);
  }

  @override
  Widget build(BuildContext context) {

    // cursed again i need a crucifix for this
    final keySize = (MediaQuery.of(context).size.width + (-32) + (-PianoNotes.bottomNotes.length * 4)) / (PianoNotes.bottomNotes.length + 1);
    print(keySize);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: PianoNotes.topNotes.map(
            (note) => PianoButton(
              note: note,
              isTopRow: true,
              keySize: keySize,
              isAnnotated: widget.isAnnotated,
              onTap: () => _handleNotePressed(
                note == widget.correctKey.name
              ),
            )
          ).toList()
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: PianoNotes.bottomNotes.map(
            (note) => PianoButton(
              note: note,
              keySize: keySize,
              isAnnotated: widget.isAnnotated,
              onTap: () => _handleNotePressed(
                  note == widget.correctKey.name
              ),
            )
          ).toList()
        ),
      ],
    );
  }
}
