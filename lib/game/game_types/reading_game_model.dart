import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muscii/data/staves/staff_model.dart';

part 'reading_game_model.g.dart';
part 'reading_game_model.freezed.dart';

@freezed
class ReadingGameModel with _$ReadingGameModel {
  const ReadingGameModel._();

  factory ReadingGameModel({
    required int id,
    required int elo,
    required List<QuestionModel> questions,
    int? startTime

  }) = _ReadingGameModel;

  factory ReadingGameModel.fromJson(Map<String, dynamic> json) =>
      _$ReadingGameModelFromJson(json);

  CompletedGameModel? getCompletedGameModel() {
    var correctAnswers = 0;
    var incorrectAnswers = 0;

    if (startTime == null) return null;

    final endTime = DateTime.now().millisecondsSinceEpoch;
    final timeTaken = ((endTime - startTime!) / 1000).floor();

    for (final q in questions) {
      if (q.correct == null) return null;

      q.correct!
        ? correctAnswers++
        : incorrectAnswers++;
    }

    return CompletedGameModel(
      timeTaken: timeTaken,
      correctAnswers: correctAnswers,
      incorrectAnswers: incorrectAnswers
    );
  }
}

@unfreezed
class QuestionModel with _$QuestionModel {
  const QuestionModel._();

  factory QuestionModel({
    required String prompt,
    required StaffModel staff,
    bool? correct,
    @Default(0) int attempts,
    List<int>? options
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);


}

@freezed
class CompletedGameModel with _$CompletedGameModel {

  const factory CompletedGameModel({
    int? userId,
    required int timeTaken, // in seconds
    required int correctAnswers,
    required int incorrectAnswers,
  }) = _CompletedGameModel;

  factory CompletedGameModel.fromJson(Map<String, dynamic> json) =>
      _$CompletedGameModelFromJson(json);
}