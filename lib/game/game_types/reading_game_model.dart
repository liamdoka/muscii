import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muscii/game/models/staff_model.dart';
import 'package:muscii/utils/notation.dart';

part 'reading_game_model.g.dart';
part 'reading_game_model.freezed.dart';

@freezed
class ReadingGameModel with _$ReadingGameModel {
  factory ReadingGameModel({
    required int id,
    required int elo,
    required List<QuestionModel> questions
  }) = _ReadingGameModel;

  factory ReadingGameModel.fromJson(Map<String, dynamic> json) =>
      _$ReadingGameModelFromJson(json);
}

@freezed
class QuestionModel with _$QuestionModel {
  const factory QuestionModel({
    required String prompt,
    required StaffModel staff,
    bool? correct,
    List<int>? options
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);
}