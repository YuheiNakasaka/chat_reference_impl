import 'package:chat_reference_impl/controllers/chat_items_controller.dart';
import 'package:chat_reference_impl/models/chat_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

void main() {
  runApp(ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

class Home extends HookWidget {
  const Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _body(),
      ),
    );
  }

  Widget _body() {
    final status = useProvider(
      ChatItemsController.provider.state.select((s) => s.status),
    );
    switch (status) {
      case ChatItemsStatus.loading:
        return const _LoadingView();
      case ChatItemsStatus.loaded:
        return ChatWidget();
      case ChatItemsStatus.empty:
        return const _EmptyView();
      case ChatItemsStatus.error:
        return const _ErrorView();
      case ChatItemsStatus.initial:
        return const SizedBox.shrink();
    }
    return const SizedBox.shrink();
  }
}

class ChatWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final chatItems = useProvider(
      ChatItemsController.provider.state.select((s) => s.chatItems),
    );
    return ListView.separated(
      itemBuilder: (context, index) => ChatItemWidget(id: chatItems[index].id),
      separatorBuilder: (_, __) => const SizedBox(height: 5),
      itemCount: chatItems.length,
    );
  }
}

class ChatItemWidget extends HookWidget {
  const ChatItemWidget({
    @required this.id,
  });
  final String id;

  @override
  Widget build(BuildContext context) {
    final chatItem = useProvider(ChatItemsController.provider.state).item(id);
    return Container(
      child: Column(
        children: [
          Text('${chatItem.id} ${chatItem.createdAt}'),
          Text('${chatItem.message}')
        ],
      ),
    );
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Error occured.'),
    );
  }
}

class _EmptyView extends StatelessWidget {
  const _EmptyView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Result is empty.'),
    );
  }
}
