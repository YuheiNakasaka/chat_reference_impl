// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatItems _$_$_ChatItemsFromJson(Map json) {
  return _$_ChatItems(
    status: _$enumDecodeNullable(_$ChatItemsStatusEnumMap, json['status']) ??
        ChatItemsStatus.initial,
    chatItems: (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : ChatItem.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ChatItemsToJson(_$_ChatItems instance) =>
    <String, dynamic>{
      'status': _$ChatItemsStatusEnumMap[instance.status],
      'items': instance.chatItems?.map((e) => e?.toJson())?.toList(),
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$ChatItemsStatusEnumMap = {
  ChatItemsStatus.initial: 'initial',
  ChatItemsStatus.loading: 'loading',
  ChatItemsStatus.loaded: 'loaded',
  ChatItemsStatus.error: 'error',
  ChatItemsStatus.empty: 'empty',
};
