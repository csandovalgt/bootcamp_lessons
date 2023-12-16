import 'package:bootcamp_practices/push_notifications_service.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    PushNotificationsService service = PushNotificationsService();
    service.subscribe();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firebase Practice"),
      ),
      body: const Column(
        children: [

        ],
      ),
    );
  }
}
