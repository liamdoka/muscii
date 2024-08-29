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
    );

Map<String, dynamic> _$$ReadingGameModelImplToJson(
        _$ReadingGameModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'elo': instance.elo,
      'questions': instance.questions,
    };

_$QuestionModelImpl _$$QuestionModelImplFromJson(Map<String, dynamic> json) =>
    _$QuestionModelImpl(
      prompt: json['prompt'] as String,
      staff: StaffModel.fromJson(json['staff'] as Map<String, dynamic>),
      correct: json['correct'] as bool?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$QuestionModelImplToJson(_$QuestionModelImpl instance) =>
    <String, dynamic>{
      'prompt': instance.prompt,
      'staff': instance.staff,
      'correct': instance.correct,
      'options': instance.options,
    };
