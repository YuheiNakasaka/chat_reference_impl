import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_item.freezed.dart';
part 'chat_item.g.dart';

@freezed
abstract class ChatItem with _$ChatItem {
  const factory ChatItem({
    @Default('') String id,
    @required @JsonKey(name: 'user_id') String userId,
    @Default('') String message,
    DateTime createdAt,
  }) = _ChatItem;

  factory ChatItem.fromJson(Map<String, dynamic> json) =>
      _$ChatItemFromJson(json);
}
