import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_model.g.dart';
part 'user_data_model.freezed.dart';

@freezed
class UserDataModel with _$UserDataModel {
  factory UserDataModel({
    required String username,
    String? displayName,
    required int xp,
    required int streak,
    required int gamesPlayed,
    required int perfectGames,
    required int correctAnswers,
    required int incorrectAnswers,
  }) = _UserDataModel;

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}
