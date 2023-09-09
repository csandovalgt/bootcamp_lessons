import 'package:bootcamp_practices/domain/message_model.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  var messages = <MessageModel>[].obs;

  sendMessage(String text) {
    messages.add(MessageModel(text: text, sender: Sender.me));
  }

}