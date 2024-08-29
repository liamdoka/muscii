import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muscii/components/buttons/piano_button.dart';
import 'package:muscii/game/game_types/reading_game_provider.dart';
import 'package:muscii/game/models/staff_model.dart';
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
    // TODO: piano button width from MediaQuery
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
              isAnnotated: widget.isAnnotated,
              onTap: () => _handleNotePressed(
                note?.name == widget.correctKey.name.name
              ),
            )
          ).toList()
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: PianoNotes.bottomNotes.map(
            (note) => PianoButton(
              note: note,
              isAnnotated: widget.isAnnotated,
              onTap: () => _handleNotePressed(
                  note.name == widget.correctKey.name.name
              ),
            )
          ).toList()
        ),
      ],
    );
  }
}
