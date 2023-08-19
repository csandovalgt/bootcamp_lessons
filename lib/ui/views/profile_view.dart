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
    final ProfileArguments args =
        ModalRoute.of(context)!.settings.arguments as ProfileArguments;

    /// segunda forma de acceder a los argumentos

    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Lista de publicaciones"),
          backgroundColor: Colors.indigo,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                "Soy profile View y tengo los datos de: ${widget.userName} o ${args.name}"),
            //Text("Soy profile View y tengo los datos de: ${widget.userName}"),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/details');
              },
              child: Text("Go to details view"),
            ),
            ElevatedButton(
              onPressed: () async {
                bool salir = await showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Confirmación'),
                      content: Text('Está seguro de salir?.'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(true); //
                          },
                          child: Text("Si, salir"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(false); // Close the dialog
                          },
                          child: Text('No, quedarme acá'),
                        ),
                      ],
                    );
                  },
                );

                if (salir) {
                  Navigator.of(context).pop(
                    ProfileArguments(
                        name: "Carlos",
                        isAuthenticated: true,
                        age: 23,
                        id: '23232'),
                  );
                }


              },
              child: Text("Get back"),
            ),
          ],
        ),
      ),
      onWillPop: () async {
        //return false;
        bool salir = await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Confirmación'),
              content: Text('Está seguro de salir?.'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(true); //
                  },
                  child: Text("Si, salir"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false); // Close the dialog
                  },
                  child: Text('No, quedarme acá'),
                ),
              ],
            );
          },
        );
        return salir;
      },
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
