import 'dart:ui';

enum Sender { me, remote }

class MessageModel {
  String text;
  Sender sender;
  Color textColor;

  MessageModel({
    required this.text,
    required this.sender,
    required this.textColor,
  });
}
