import 'package:bootcamp_practices/domain/message_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/chat_provider.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends ConsumerState<HomeView> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final messages = ref.watch(messagesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text("Enviar"),
        onPressed: () {
          final list = ref.read(messagesProvider);

          list.add(MessageModel(
            text: textEditingController.text,
            sender: Sender.me,
          ));

          ref.read(messagesProvider.notifier).update((state) => [...list]);
          textEditingController.clear();
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    MessageModel message = messages[index];
                    return Container(
                      height: 50,
                      width: double.infinity,
                      child: Text(
                        message.text,
                      ),
                    );
                  }),
            ),
            TextFormField(
              controller: textEditingController,
              decoration: const InputDecoration(hintText: "Ingresa un mensaje"),
            )
          ],
        ),
      ),
    );
  }
}
