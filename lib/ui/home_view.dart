import 'package:bootcamp_practices/constants.dart';
import 'package:bootcamp_practices/models/data_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bootcamp_practices/data_sources/remote/http_client.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Client httpClient;
  bool isProcessing = false;

  @override
  void initState() {
    super.initState();
    httpClient = Client();
  }

  getInfo() async {
    setState(() {
      isProcessing = true;
    });
    MyResponse myResponse = await httpClient.get(path: 'name');
    setState(() {
      isProcessing = false;
    });
    if (myResponse.response != null) {
      if (kDebugMode) {
        DataModel myData = DataModel.fromJson(myResponse.response!.data);
        print(myData.message);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Bootcamp"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: isProcessing
                ? null
                : () async {
                    getInfo();
                  },
            child: isProcessing
                ? const CircularProgressIndicator()
                : const Text("Click me"),
          ),
        ],
      ),
    );
  }
}
