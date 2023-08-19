import 'package:bootcamp_practices/ui/views/profile_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/custom_form_field.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  init() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home view"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              bool result = await Navigator.pushNamed(
                context,
                '/profile',
                arguments: ProfileArguments(name: "Carlos Sandoval"),
              ) as bool;
              print("I've got the value: $result");

              /*Navigator.pushNamed(
                context,
                '/profile',
                arguments: ProfileArguments(name: "Carlos Sandoval"),
              ).then((value) {
                print("I've got the value: $value");
              });*/
              /*Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileView(
                    userName: "Carlos Sandoval",
                  ),
                ),
              );*/
            },
            child: Text("Go to profile")),
      ),
    );
  }
}
