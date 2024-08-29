// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StaffModelImpl _$$StaffModelImplFromJson(Map<String, dynamic> json) =>
    _$StaffModelImpl(
      musicKey: $enumDecodeNullable(_$KeyNameEnumMap, json['musicKey']) ??
          KeyName.c_maj,
      notes: (json['notes'] as List<dynamic>?)
              ?.map((e) => NoteModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      clef: $enumDecodeNullable(_$ClefEnumMap, json['clef']),
      timeSignature: json['timeSignature'] as String?,
    );

Map<String, dynamic> _$$StaffModelImplToJson(_$StaffModelImpl instance) =>
    <String, dynamic>{
      'musicKey': _$KeyNameEnumMap[instance.musicKey]!,
      'notes': instance.notes,
      'clef': _$ClefEnumMap[instance.clef],
      'timeSignature': instance.timeSignature,
    };

const _$KeyNameEnumMap = {
  KeyName.c_maj: 'c_maj',
  KeyName.c_sharp_maj: 'c_sharp_maj',
};

const _$ClefEnumMap = {
  Clef.treble: 'treble',
  Clef.bass: 'bass',
};

_$NoteModelImpl _$$NoteModelImplFromJson(Map<String, dynamic> json) =>
    _$NoteModelImpl(
      name: $enumDecode(_$NoteNameEnumMap, json['name']),
      octave: (json['octave'] as num).toInt(),
      duration: (json['duration'] as num?)?.toDouble() ?? 1.0,
    );

Map<String, dynamic> _$$NoteModelImplToJson(_$NoteModelImpl instance) =>
    <String, dynamic>{
      'name': _$NoteNameEnumMap[instance.name]!,
      'octave': instance.octave,
      'duration': instance.duration,
    };

const _$NoteNameEnumMap = {
  NoteName.c: 'c',
  NoteName.c_sharp: 'c_sharp',
  NoteName.d: 'd',
  NoteName.d_sharp: 'd_sharp',
  NoteName.e: 'e',
  NoteName.f: 'f',
  NoteName.f_sharp: 'f_sharp',
  NoteName.g: 'g',
  NoteName.g_sharp: 'g_sharp',
  NoteName.a: 'a',
  NoteName.a_sharp: 'a_sharp',
  NoteName.b: 'b',
};
