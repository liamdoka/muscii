import 'package:muscii/constants/svg_strings.dart';
import 'package:muscii/game/models/staff_model.dart';
import 'package:muscii/utils/notation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:muscii/game/game_types/reading_game_model.dart';

part 'reading_game_provider.g.dart';

@riverpod
class ReadingGame extends _$ReadingGame {

  @override
  Future<ReadingGameModel> build() async =>
      ReadingGameModel(id: 0, elo: 0, questions: [
        const QuestionModel(
          prompt: "Play this note on the piano provided",
          staff: StaffModel(
            notes: [NoteModel(name: NoteName.c, octave: 4)],
            clef: Clef.treble
          )
        )
      ]);

  Future<void> submitAnswer(bool isCorrect) async{
    print(isCorrect);
  }
}