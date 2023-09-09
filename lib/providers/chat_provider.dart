import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../domain/message_model.dart';

class ChatProvider extends ChangeNotifier {
  List<MessageModel> messages = [];

  Future<void> sendMessage(String text, Color color) async {
    messages.add(MessageModel(text: text, sender: Sender.me, textColor: color));
    notifyListeners();
  }
}


