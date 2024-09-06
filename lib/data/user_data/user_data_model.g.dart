// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataModelImpl _$$UserDataModelImplFromJson(Map<String, dynamic> json) =>
    _$UserDataModelImpl(
      username: json['username'] as String,
      displayName: json['displayName'] as String?,
      xp: (json['xp'] as num).toInt(),
      streak: (json['streak'] as num).toInt(),
      gamesPlayed: (json['gamesPlayed'] as num).toInt(),
      perfectGames: (json['perfectGames'] as num).toInt(),
      correctAnswers: (json['correctAnswers'] as num).toInt(),
      incorrectAnswers: (json['incorrectAnswers'] as num).toInt(),
    );

Map<String, dynamic> _$$UserDataModelImplToJson(_$UserDataModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'displayName': instance.displayName,
      'xp': instance.xp,
      'streak': instance.streak,
      'gamesPlayed': instance.gamesPlayed,
      'perfectGames': instance.perfectGames,
      'correctAnswers': instance.correctAnswers,
      'incorrectAnswers': instance.incorrectAnswers,
    };
