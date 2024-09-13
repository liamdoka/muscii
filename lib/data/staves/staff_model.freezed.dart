// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StaffModel _$StaffModelFromJson(Map<String, dynamic> json) {
  return _StaffModel.fromJson(json);
}

/// @nodoc
mixin _$StaffModel {
  KeySignature get keySignature => throw _privateConstructorUsedError;
  List<List<NoteModel>> get notes => throw _privateConstructorUsedError;
  Clef? get clef => throw _privateConstructorUsedError;
  String? get timeSignature => throw _privateConstructorUsedError;

  /// Serializes this StaffModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StaffModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StaffModelCopyWith<StaffModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffModelCopyWith<$Res> {
  factory $StaffModelCopyWith(
          StaffModel value, $Res Function(StaffModel) then) =
      _$StaffModelCopyWithImpl<$Res, StaffModel>;
  @useResult
  $Res call(
      {KeySignature keySignature,
      List<List<NoteModel>> notes,
      Clef? clef,
      String? timeSignature});
}

/// @nodoc
class _$StaffModelCopyWithImpl<$Res, $Val extends StaffModel>
    implements $StaffModelCopyWith<$Res> {
  _$StaffModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StaffModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keySignature = null,
    Object? notes = null,
    Object? clef = freezed,
    Object? timeSignature = freezed,
  }) {
    return _then(_value.copyWith(
      keySignature: null == keySignature
          ? _value.keySignature
          : keySignature // ignore: cast_nullable_to_non_nullable
              as KeySignature,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<List<NoteModel>>,
      clef: freezed == clef
          ? _value.clef
          : clef // ignore: cast_nullable_to_non_nullable
              as Clef?,
      timeSignature: freezed == timeSignature
          ? _value.timeSignature
          : timeSignature // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StaffModelImplCopyWith<$Res>
    implements $StaffModelCopyWith<$Res> {
  factory _$$StaffModelImplCopyWith(
          _$StaffModelImpl value, $Res Function(_$StaffModelImpl) then) =
      __$$StaffModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {KeySignature keySignature,
      List<List<NoteModel>> notes,
      Clef? clef,
      String? timeSignature});
}

/// @nodoc
class __$$StaffModelImplCopyWithImpl<$Res>
    extends _$StaffModelCopyWithImpl<$Res, _$StaffModelImpl>
    implements _$$StaffModelImplCopyWith<$Res> {
  __$$StaffModelImplCopyWithImpl(
      _$StaffModelImpl _value, $Res Function(_$StaffModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StaffModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keySignature = null,
    Object? notes = null,
    Object? clef = freezed,
    Object? timeSignature = freezed,
  }) {
    return _then(_$StaffModelImpl(
      keySignature: null == keySignature
          ? _value.keySignature
          : keySignature // ignore: cast_nullable_to_non_nullable
              as KeySignature,
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<List<NoteModel>>,
      clef: freezed == clef
          ? _value.clef
          : clef // ignore: cast_nullable_to_non_nullable
              as Clef?,
      timeSignature: freezed == timeSignature
          ? _value.timeSignature
          : timeSignature // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StaffModelImpl extends _StaffModel {
  const _$StaffModelImpl(
      {this.keySignature = KeySignature.c_maj,
      final List<List<NoteModel>> notes = const [],
      this.clef = Clef.treble,
      this.timeSignature})
      : _notes = notes,
        super._();

  factory _$StaffModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StaffModelImplFromJson(json);

  @override
  @JsonKey()
  final KeySignature keySignature;
  final List<List<NoteModel>> _notes;
  @override
  @JsonKey()
  List<List<NoteModel>> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  @JsonKey()
  final Clef? clef;
  @override
  final String? timeSignature;

  @override
  String toString() {
    return 'StaffModel(keySignature: $keySignature, notes: $notes, clef: $clef, timeSignature: $timeSignature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffModelImpl &&
            (identical(other.keySignature, keySignature) ||
                other.keySignature == keySignature) &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            (identical(other.clef, clef) || other.clef == clef) &&
            (identical(other.timeSignature, timeSignature) ||
                other.timeSignature == timeSignature));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, keySignature,
      const DeepCollectionEquality().hash(_notes), clef, timeSignature);

  /// Create a copy of StaffModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffModelImplCopyWith<_$StaffModelImpl> get copyWith =>
      __$$StaffModelImplCopyWithImpl<_$StaffModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffModelImplToJson(
      this,
    );
  }
}

abstract class _StaffModel extends StaffModel {
  const factory _StaffModel(
      {final KeySignature keySignature,
      final List<List<NoteModel>> notes,
      final Clef? clef,
      final String? timeSignature}) = _$StaffModelImpl;
  const _StaffModel._() : super._();

  factory _StaffModel.fromJson(Map<String, dynamic> json) =
      _$StaffModelImpl.fromJson;

  @override
  KeySignature get keySignature;
  @override
  List<List<NoteModel>> get notes;
  @override
  Clef? get clef;
  @override
  String? get timeSignature;

  /// Create a copy of StaffModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaffModelImplCopyWith<_$StaffModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NoteModel _$NoteModelFromJson(Map<String, dynamic> json) {
  return _NoteModel.fromJson(json);
}

/// @nodoc
mixin _$NoteModel {
  NoteName get name => throw _privateConstructorUsedError;
  int get octave => throw _privateConstructorUsedError;
  double get duration => throw _privateConstructorUsedError;

  /// Serializes this NoteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteModelCopyWith<NoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteModelCopyWith<$Res> {
  factory $NoteModelCopyWith(NoteModel value, $Res Function(NoteModel) then) =
      _$NoteModelCopyWithImpl<$Res, NoteModel>;
  @useResult
  $Res call({NoteName name, int octave, double duration});
}

/// @nodoc
class _$NoteModelCopyWithImpl<$Res, $Val extends NoteModel>
    implements $NoteModelCopyWith<$Res> {
  _$NoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? octave = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NoteName,
      octave: null == octave
          ? _value.octave
          : octave // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteModelImplCopyWith<$Res>
    implements $NoteModelCopyWith<$Res> {
  factory _$$NoteModelImplCopyWith(
          _$NoteModelImpl value, $Res Function(_$NoteModelImpl) then) =
      __$$NoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NoteName name, int octave, double duration});
}

/// @nodoc
class __$$NoteModelImplCopyWithImpl<$Res>
    extends _$NoteModelCopyWithImpl<$Res, _$NoteModelImpl>
    implements _$$NoteModelImplCopyWith<$Res> {
  __$$NoteModelImplCopyWithImpl(
      _$NoteModelImpl _value, $Res Function(_$NoteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? octave = null,
    Object? duration = null,
  }) {
    return _then(_$NoteModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NoteName,
      octave: null == octave
          ? _value.octave
          : octave // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteModelImpl implements _NoteModel {
  const _$NoteModelImpl(
      {required this.name, this.octave = 5, this.duration = 1.0});

  factory _$NoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteModelImplFromJson(json);

  @override
  final NoteName name;
  @override
  @JsonKey()
  final int octave;
  @override
  @JsonKey()
  final double duration;

  @override
  String toString() {
    return 'NoteModel(name: $name, octave: $octave, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.octave, octave) || other.octave == octave) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, octave, duration);

  /// Create a copy of NoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteModelImplCopyWith<_$NoteModelImpl> get copyWith =>
      __$$NoteModelImplCopyWithImpl<_$NoteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteModelImplToJson(
      this,
    );
  }
}

abstract class _NoteModel implements NoteModel {
  const factory _NoteModel(
      {required final NoteName name,
      final int octave,
      final double duration}) = _$NoteModelImpl;

  factory _NoteModel.fromJson(Map<String, dynamic> json) =
      _$NoteModelImpl.fromJson;

  @override
  NoteName get name;
  @override
  int get octave;
  @override
  double get duration;

  /// Create a copy of NoteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteModelImplCopyWith<_$NoteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
