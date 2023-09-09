import 'package:bootcamp_practices/domain/message_model.dart';
import 'package:bootcamp_practices/providers/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bootcamp_practices/extensions/string_extension.dart';
import '../providers/theme_provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController textEditingController = TextEditingController();
  String name = "Carlos";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.watch<ThemeProvider>().isDarkMode
            ? Colors.black
            : Colors.white,
        title: Text(
          name.toCustomLowerCase(),
          style: TextStyle(
              color: !context.watch<ThemeProvider>().isDarkMode
                  ? Colors.black
                  : Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // nomenclatura mas corta
              context.read<ThemeProvider>().changeMode();

              // nomenclatura mas larga
              //Provider.of<ThemeProvider>(context, listen: false).changeMode();
            },
            icon: Icon(
              context.watch<ThemeProvider>().isDarkMode
                  ? Icons.light_mode
                  : Icons.dark_mode,
              color: !context.watch<ThemeProvider>().isDarkMode
                  ? Colors.black
                  : Colors.white,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Enviar"),
        onPressed: () {
          context.read<ChatProvider>().sendMessage(
              textEditingController.text,
              context.read<ThemeProvider>().isDarkMode
                  ? Colors.black
                  : Colors.red);
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
