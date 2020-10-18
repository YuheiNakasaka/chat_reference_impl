import 'package:chat_reference_impl/models/chat_item.dart';
import 'package:riverpod/all.dart';

class FakeAPI {
  const FakeAPI._();
  static final chatItems = FutureProvider<List<ChatItem>>((ref) async {
    final result = await Future.delayed(const Duration(seconds: 5), () {
      return [
        ChatItem(
          userId: 'aaaaaaa',
          message: 'this is fake a message',
          createdAt: DateTime.now(),
        ),
        ChatItem(
          userId: 'bbbbbbb',
          message: 'this is fake b message',
          createdAt: DateTime.now(),
        ),
        ChatItem(
          userId: 'ccccccc',
          message: 'this is fake c message',
          createdAt: DateTime.now(),
        ),
      ];
    });
    return result;
  });
}
