// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StaffModelImpl _$$StaffModelImplFromJson(Map<String, dynamic> json) =>
    _$StaffModelImpl(
      keySignature:
          $enumDecodeNullable(_$KeySignatureEnumMap, json['keySignature']) ??
              KeySignature.c_maj,
      notes: (json['notes'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => NoteModel.fromJson(e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          const [],
      clef: $enumDecodeNullable(_$ClefEnumMap, json['clef']) ?? Clef.treble,
      timeSignature: json['timeSignature'] as String?,
    );

Map<String, dynamic> _$$StaffModelImplToJson(_$StaffModelImpl instance) =>
    <String, dynamic>{
      'keySignature': _$KeySignatureEnumMap[instance.keySignature]!,
      'notes': instance.notes,
      'clef': _$ClefEnumMap[instance.clef],
      'timeSignature': instance.timeSignature,
    };

const _$KeySignatureEnumMap = {
  KeySignature.c_maj: 'c_maj',
  KeySignature.c_min: 'c_min',
  KeySignature.c_sharp_maj: 'c_sharp_maj',
  KeySignature.c_sharp_min: 'c_sharp_min',
};

const _$ClefEnumMap = {
  Clef.treble: 'treble',
  Clef.bass: 'bass',
};

_$NoteModelImpl _$$NoteModelImplFromJson(Map<String, dynamic> json) =>
    _$NoteModelImpl(
      name: $enumDecode(_$NoteNameEnumMap, json['name']),
      octave: (json['octave'] as num?)?.toInt() ?? 5,
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
