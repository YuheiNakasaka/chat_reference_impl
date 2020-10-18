import 'package:chat_reference_impl/api/fake_api.dart';
import 'package:chat_reference_impl/models/chat_items.dart';
import 'package:riverpod/all.dart';
import 'package:state_notifier/state_notifier.dart';

class ChatItemsController extends StateNotifier<ChatItems> {
  ChatItemsController._(this._ref) : super(ChatItems()) {
    _load();
  }

  static final provider = StateNotifierProvider(
    (ref) => ChatItemsController._(ref),
  );

  final ProviderReference _ref;

  Future<void> _load() async {
    // stateのupdateはcopyWith
    state = state.copyWith(status: ChatItemsStatus.loading);
    state = state.copyWith(
      status: ChatItemsStatus.loaded,
      // readはwatchと違ってstateの変更をlistenしない
      chatItems: await _ref.read(FakeAPI.chatItems.future),
    );
  }
}
