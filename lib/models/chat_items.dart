import 'package:chat_reference_impl/models/chat_item.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_items.freezed.dart';

enum ChatItemsStatus {
  initial,
  loading,
  loaded,
  error,
  empty,
}

// カスタムメソッドを生やす時はwithではなくimplementsを使う
// あと._()のコンストラクタを追加する必要がある
@freezed
abstract class ChatItems implements _$ChatItems {
  factory ChatItems({
    @Default(ChatItemsStatus.initial) ChatItemsStatus status,
    @Default(<ChatItem>[]) List<ChatItem> chatItems,
  }) = _ChatItems;

  ChatItems._();

  // Tips: late annotationをつけるとキャッシュしてくれる
  @late
  Map<String, ChatItem> get _map => Map.fromEntries(
        chatItems.map(
          (e) => MapEntry(e.id, e),
        ),
      );

  ChatItem item(String id) => _map[id];
}
