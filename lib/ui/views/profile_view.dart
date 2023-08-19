import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  final String userName;
  const ProfileView({
    Key? key,
    this.userName = "",
  }) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ProfileArguments args = ModalRoute.of(context)!.settings.arguments as ProfileArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Soy Profile View"),
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Soy profile View y tengo los datos de: ${widget.userName} o ${args.name}"),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/details');
            },
            child: Text("Go to details view"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: Text("Get back"),
          ),
        ],
      ),
    );
  }
}

class ProfileArguments {
  final String name;
  ProfileArguments({required this.name});
}
