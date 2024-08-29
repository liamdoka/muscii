import 'package:muscii/constants/svg_strings.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:muscii/game/game_types/reading_game_model.dart';

part 'reading_game_provider.g.dart';

@riverpod
class ReadingGame extends _$ReadingGame {

  @override
  Future<ReadingGameModel> build() async =>
      ReadingGameModel(id: 0, elo: 0, questions: [
        QuestionModel(prompt: "Play this note on the piano provided", answer: 4, svg: buildStaff(offset: 4))
      ]);

  // Future<ReadingGameModel> getGameModelFromServer() async {
  //
  // }

}