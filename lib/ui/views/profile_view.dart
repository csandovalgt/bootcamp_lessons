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
  String name = "";

  @override
  void initState() {
    super.initState();
    //name = EstadoGlobal.getname();
  }

  @override
  Widget build(BuildContext context) {
    final ProfileArguments args = ModalRoute.of(context)!.settings.arguments as ProfileArguments;
    /// segunda forma de acceder a los argumentos


    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de publicaciones"),
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Soy profile View y tengo los datos de: ${widget.userName} o ${args.name}"),
          //Text("Soy profile View y tengo los datos de: ${widget.userName}"),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/details');
            },
            child: Text("Go to details view"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
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
  final bool isAuthenticated;
  final int age;
  final String id;

  ProfileArguments({
    required this.name,
    required this.isAuthenticated,
    required this.age,
    required this.id,
  });
}
