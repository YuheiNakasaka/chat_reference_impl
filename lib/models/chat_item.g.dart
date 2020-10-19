// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatItem _$_$_ChatItemFromJson(Map json) {
  return _$_ChatItem(
    id: json['id'] as String ?? '',
    userId: json['user_id'] as String,
    message: json['message'] as String ?? '',
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
  );
}

Map<String, dynamic> _$_$_ChatItemToJson(_$_ChatItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'message': instance.message,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
