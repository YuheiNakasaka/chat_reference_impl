// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'chat_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ChatItemsTearOff {
  const _$ChatItemsTearOff();

// ignore: unused_element
  _ChatItems call(
      {ChatItemsStatus status = ChatItemsStatus.initial,
      List<ChatItem> chatItems = const <ChatItem>[]}) {
    return _ChatItems(
      status: status,
      chatItems: chatItems,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChatItems = _$ChatItemsTearOff();

/// @nodoc
mixin _$ChatItems {
  ChatItemsStatus get status;
  List<ChatItem> get chatItems;

  $ChatItemsCopyWith<ChatItems> get copyWith;
}

/// @nodoc
abstract class $ChatItemsCopyWith<$Res> {
  factory $ChatItemsCopyWith(ChatItems value, $Res Function(ChatItems) then) =
      _$ChatItemsCopyWithImpl<$Res>;
  $Res call({ChatItemsStatus status, List<ChatItem> chatItems});
}

/// @nodoc
class _$ChatItemsCopyWithImpl<$Res> implements $ChatItemsCopyWith<$Res> {
  _$ChatItemsCopyWithImpl(this._value, this._then);

  final ChatItems _value;
  // ignore: unused_field
  final $Res Function(ChatItems) _then;

  @override
  $Res call({
    Object status = freezed,
    Object chatItems = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as ChatItemsStatus,
      chatItems:
          chatItems == freezed ? _value.chatItems : chatItems as List<ChatItem>,
    ));
  }
}

/// @nodoc
abstract class _$ChatItemsCopyWith<$Res> implements $ChatItemsCopyWith<$Res> {
  factory _$ChatItemsCopyWith(
          _ChatItems value, $Res Function(_ChatItems) then) =
      __$ChatItemsCopyWithImpl<$Res>;
  @override
  $Res call({ChatItemsStatus status, List<ChatItem> chatItems});
}

/// @nodoc
class __$ChatItemsCopyWithImpl<$Res> extends _$ChatItemsCopyWithImpl<$Res>
    implements _$ChatItemsCopyWith<$Res> {
  __$ChatItemsCopyWithImpl(_ChatItems _value, $Res Function(_ChatItems) _then)
      : super(_value, (v) => _then(v as _ChatItems));

  @override
  _ChatItems get _value => super._value as _ChatItems;

  @override
  $Res call({
    Object status = freezed,
    Object chatItems = freezed,
  }) {
    return _then(_ChatItems(
      status: status == freezed ? _value.status : status as ChatItemsStatus,
      chatItems:
          chatItems == freezed ? _value.chatItems : chatItems as List<ChatItem>,
    ));
  }
}

/// @nodoc
class _$_ChatItems extends _ChatItems with DiagnosticableTreeMixin {
  _$_ChatItems(
      {this.status = ChatItemsStatus.initial,
      this.chatItems = const <ChatItem>[]})
      : assert(status != null),
        assert(chatItems != null),
        super._();

  @JsonKey(defaultValue: ChatItemsStatus.initial)
  @override
  final ChatItemsStatus status;
  @JsonKey(defaultValue: const <ChatItem>[])
  @override
  final List<ChatItem> chatItems;

  bool _did_map = false;
  Map<String, ChatItem> __map;

  @override
  Map<String, ChatItem> get _map {
    if (_did_map == false) {
      _did_map = true;
      __map = Map.fromEntries(
        chatItems.map(
          (e) => MapEntry(e.id, e),
        ),
      );
    }
    return __map;
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatItems(status: $status, chatItems: $chatItems, _map: $_map)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatItems'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('chatItems', chatItems))
      ..add(DiagnosticsProperty('_map', _map));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatItems &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.chatItems, chatItems) ||
                const DeepCollectionEquality()
                    .equals(other.chatItems, chatItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(chatItems);

  @override
  _$ChatItemsCopyWith<_ChatItems> get copyWith =>
      __$ChatItemsCopyWithImpl<_ChatItems>(this, _$identity);
}

abstract class _ChatItems extends ChatItems {
  _ChatItems._() : super._();
  factory _ChatItems({ChatItemsStatus status, List<ChatItem> chatItems}) =
      _$_ChatItems;

  @override
  ChatItemsStatus get status;
  @override
  List<ChatItem> get chatItems;
  @override
  _$ChatItemsCopyWith<_ChatItems> get copyWith;
}
