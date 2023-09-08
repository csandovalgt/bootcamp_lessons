import 'package:flutter/cupertino.dart';

import '../domain/message_model.dart';

class ChatProvider extends ChangeNotifier {
  List<MessageModel> messages = [];

  Future<void> sendMessage(String text) async {
    messages.add(MessageModel(text: text, sender: Sender.me));
    notifyListeners();
  }
}
