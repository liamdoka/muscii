// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reading_game_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadingGameModelImpl _$$ReadingGameModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadingGameModelImpl(
      id: (json['id'] as num).toInt(),
      elo: (json['elo'] as num).toInt(),
      questions: (json['questions'] as List<dynamic>)
          .map((e) => QuestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      startTime: (json['startTime'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ReadingGameModelImplToJson(
        _$ReadingGameModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'elo': instance.elo,
      'questions': instance.questions,
      'startTime': instance.startTime,
    };

_$QuestionModelImpl _$$QuestionModelImplFromJson(Map<String, dynamic> json) =>
    _$QuestionModelImpl(
      prompt: json['prompt'] as String,
      staff: StaffModel.fromJson(json['staff'] as Map<String, dynamic>),
      correct: json['correct'] as bool?,
      attempts: (json['attempts'] as num?)?.toInt() ?? 0,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$QuestionModelImplToJson(_$QuestionModelImpl instance) =>
    <String, dynamic>{
      'prompt': instance.prompt,
      'staff': instance.staff,
      'correct': instance.correct,
      'attempts': instance.attempts,
      'options': instance.options,
    };

_$CompletedGameModelImpl _$$CompletedGameModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CompletedGameModelImpl(
      userId: (json['userId'] as num?)?.toInt(),
      timeTaken: (json['timeTaken'] as num).toInt(),
      correctAnswers: (json['correctAnswers'] as num).toInt(),
      incorrectAnswers: (json['incorrectAnswers'] as num).toInt(),
    );

Map<String, dynamic> _$$CompletedGameModelImplToJson(
        _$CompletedGameModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'timeTaken': instance.timeTaken,
      'correctAnswers': instance.correctAnswers,
      'incorrectAnswers': instance.incorrectAnswers,
    };
