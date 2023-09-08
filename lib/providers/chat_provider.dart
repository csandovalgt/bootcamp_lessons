import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/message_model.dart';

final messagesProvider = StateProvider<List<MessageModel>>((_) => []);
