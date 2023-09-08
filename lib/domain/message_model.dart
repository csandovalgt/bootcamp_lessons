enum Sender { me, remote }

class MessageModel {
  String text;
  Sender sender;

  MessageModel({
    required this.text,
    required this.sender,
  });
}
