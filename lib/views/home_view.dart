import 'package:bootcamp_practices/controllers/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController textEditingController = TextEditingController();
  final ChatController chatController = Get.put(ChatController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(()=>Text(chatController.title.value)),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Enviar"),
        onPressed: () {
          chatController.sendMessage(textEditingController.text);
          textEditingController.clear();

          Navigator.of(context).pushReplacementNamed('ddfd');
          MediaQuery.of(context).size;
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: chatController.messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.red.withOpacity(0.2),
                      child: Text(chatController.messages[index].text),
                    );
                  },
                ),
              ),
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
