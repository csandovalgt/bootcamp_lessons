import 'package:bootcamp_practices/routes.dart';
import 'package:bootcamp_practices/ui/views/profile_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../application/app_logic.dart';
import '../components/custom_form_field.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  String name = "";
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name),
          ElevatedButton(
            onPressed: () async {
              //AppLogic.login("usuario","passwrod", context);

              //Navigator.popAndPushNamed(context, route)

              /// Detiene el procesamiento de Flutter y continua hasta que termine el future
              ProfileArguments args = await Navigator.pushNamed(
                context,
                AppRoutes.profileRoute,
                arguments: ProfileArguments(
                  name: "Carlos Sandoval",
                  age: 20,
                  id: "dfsdfijj939834",
                  isAuthenticated: true,
                ),
              ) as ProfileArguments;
              setState(() {
                name = args.name;
              });

              /// No Detiene el procesamiento de Flutter, sino que al terminar ejecuta lo que está dentro
              /// del then
              /*Navigator.pushNamed(
                context,
                AppRoutes.profileRoute,
                arguments: ProfileArguments(
                  name: "Carlos Sandoval",
                  age: 20,
                  id: "dfsdfijj939834",
                  isAuthenticated: true,
                ),
              ).then((value) {
                ProfileArguments args = value as ProfileArguments;
                setState(() {
                  name = args.name;
                });

              /// Ejecuta el push sin importar el resultado
              Navigator.pushNamed(
                context,
                AppRoutes.profileRoute,
                arguments: ProfileArguments(
                  name: "Carlos Sandoval",
                  age: 20,
                  id: "dfsdfijj939834",
                  isAuthenticated: true,
                ),
              );
              });*/



              // llamada a api
              // otro cálculo

              /* bool result = await Navigator.pushNamed(
                context,
                '/profile',
                arguments: ProfileArguments(name: "Carlos Sandoval"),
              ) as bool;*/
              // print("I've got the value: $result");

              /*Navigator.pushNamed(
                context,
                '/profile',
                arguments: ProfileArguments(name: "Carlos Sandoval"),
              ).then((value) {
                print("I've got the value: $value");
              });*/

              //pseudocodigo si quisiera usar un manejador de estado global
              //EstadoGlobal.updateName("Carlos");

              /* Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileView(
                    userName: "Carlos Sandoval",
                  ),
                ),
              );*/




            },
            child: Text("Go to profile"),),
        ],
      ),
    );
  }
}
