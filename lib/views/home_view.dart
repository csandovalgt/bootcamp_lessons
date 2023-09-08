import 'package:bootcamp_practices/domain/message_model.dart';
import 'package:bootcamp_practices/providers/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Enviar"),
        onPressed: () {
          context.read<ChatProvider>().sendMessage(textEditingController.text);
          textEditingController.clear();
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: context.watch<ChatProvider>().messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    MessageModel message =
                        context.watch<ChatProvider>().messages[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 12,
                      ),
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        color: Colors.indigo.withOpacity(0.20),
                        child: Text(message.text),
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
