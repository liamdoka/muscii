// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthModelImpl _$$AuthModelImplFromJson(Map<String, dynamic> json) =>
    _$AuthModelImpl(
      id: json['id'] as String? ?? "",
      accessToken: json['accessToken'] as String? ?? "",
      refreshToken: json['refreshToken'] as String? ?? "",
    );

Map<String, dynamic> _$$AuthModelImplToJson(_$AuthModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };

_$AuthRequestModelImpl _$$AuthRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthRequestModelImpl(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$AuthRequestModelImplToJson(
        _$AuthRequestModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };
