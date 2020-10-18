import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_item.freezed.dart';

@freezed
abstract class ChatItem with _$ChatItem {
  const factory ChatItem({
    @Default('') String id,
    @required String userId,
    @Default('') String message,
    DateTime createdAt,
  }) = _ChatItem;
}
