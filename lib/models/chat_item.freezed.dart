// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'chat_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ChatItemTearOff {
  const _$ChatItemTearOff();

// ignore: unused_element
  _ChatItem call(
      {String id = '',
      @required String userId,
      String message = '',
      DateTime createdAt}) {
    return _ChatItem(
      id: id,
      userId: userId,
      message: message,
      createdAt: createdAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChatItem = _$ChatItemTearOff();

/// @nodoc
mixin _$ChatItem {
  String get id;
  String get userId;
  String get message;
  DateTime get createdAt;

  $ChatItemCopyWith<ChatItem> get copyWith;
}

/// @nodoc
abstract class $ChatItemCopyWith<$Res> {
  factory $ChatItemCopyWith(ChatItem value, $Res Function(ChatItem) then) =
      _$ChatItemCopyWithImpl<$Res>;
  $Res call({String id, String userId, String message, DateTime createdAt});
}

/// @nodoc
class _$ChatItemCopyWithImpl<$Res> implements $ChatItemCopyWith<$Res> {
  _$ChatItemCopyWithImpl(this._value, this._then);

  final ChatItem _value;
  // ignore: unused_field
  final $Res Function(ChatItem) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object message = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      message: message == freezed ? _value.message : message as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$ChatItemCopyWith<$Res> implements $ChatItemCopyWith<$Res> {
  factory _$ChatItemCopyWith(_ChatItem value, $Res Function(_ChatItem) then) =
      __$ChatItemCopyWithImpl<$Res>;
  @override
  $Res call({String id, String userId, String message, DateTime createdAt});
}

/// @nodoc
class __$ChatItemCopyWithImpl<$Res> extends _$ChatItemCopyWithImpl<$Res>
    implements _$ChatItemCopyWith<$Res> {
  __$ChatItemCopyWithImpl(_ChatItem _value, $Res Function(_ChatItem) _then)
      : super(_value, (v) => _then(v as _ChatItem));

  @override
  _ChatItem get _value => super._value as _ChatItem;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object message = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_ChatItem(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      message: message == freezed ? _value.message : message as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
    ));
  }
}

/// @nodoc
class _$_ChatItem with DiagnosticableTreeMixin implements _ChatItem {
  const _$_ChatItem(
      {this.id = '', @required this.userId, this.message = '', this.createdAt})
      : assert(id != null),
        assert(userId != null),
        assert(message != null);

  @JsonKey(defaultValue: '')
  @override
  final String id;
  @override
  final String userId;
  @JsonKey(defaultValue: '')
  @override
  final String message;
  @override
  final DateTime createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatItem(id: $id, userId: $userId, message: $message, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatItem'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(createdAt);

  @override
  _$ChatItemCopyWith<_ChatItem> get copyWith =>
      __$ChatItemCopyWithImpl<_ChatItem>(this, _$identity);
}

abstract class _ChatItem implements ChatItem {
  const factory _ChatItem(
      {String id,
      @required String userId,
      String message,
      DateTime createdAt}) = _$_ChatItem;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get message;
  @override
  DateTime get createdAt;
  @override
  _$ChatItemCopyWith<_ChatItem> get copyWith;
}
