import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/custom_form_field.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _formKey = GlobalKey<FormState>();
  String _profession = "IS";
  bool _isSelected = false;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  bool isPasswordHidden = true;
  FocusNode _nameFocusNode = FocusNode();
  FocusNode _lastnameFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  init() {}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _nameFocusNode.unfocus();
        _lastnameFocusNode.unfocus();
        _passwordFocusNode.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(),
        body: Form(
          key: _formKey,
          child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Documento de identificacion"),
                    TextFormField(
                      validator: (value) {
                        if (!isValidEmail(value!)) {
                          return "no es un email valido";
                        }
                        return null;
                      },
                    ),
                    /*CustomFormField(
                      label: "Name",
                      controller: _nameController,
                      prefixIcon: const Icon(
                        Icons.person,
                      ),
                      focusNode: _nameFocusNode,
                      onSubmit: (String val) {
                        _lastnameFocusNode.requestFocus();
                      },
                    ),
                    CustomFormField(
                      label: "Last Name",
                      controller: _lastnameController,
                      prefixIcon: const Icon(
                        Icons.account_circle,
                      ),
                      focusNode: _lastnameFocusNode,
                      onSubmit: (String val) {
                        _passwordFocusNode.requestFocus();
                      },
                    ),
                    CustomFormField(
                      label: "Password",
                      controller: _passwordController,
                      prefixIcon: const Icon(
                        Icons.account_circle,
                      ),
                      focusNode: _passwordFocusNode,
                      isPassword: isPasswordHidden,
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            isPasswordHidden = !isPasswordHidden;
                          });
                        },
                        child: isPasswordHidden
                            ? Icon(
                                Icons.remove_red_eye,
                              )
                            : Icon(
                                Icons.remove_red_eye_outlined,
                              ),
                      ),
                      onSubmit: (String val) {
                        print("todos los datos completos");
                      },
                    ),
                    CustomFormField(
                      label: "Phone Number",
                      controller: _phoneController,
                      keyboardType: TextInputType.number,
                      prefixIcon: const Icon(
                        Icons.account_circle,
                      ),
                      onSubmit: (String val) {
                        _passwordFocusNode.requestFocus();
                      },
                      validator: (value) {
                        if (!isValidEmail(value!)) {
                          return "no es un email valido";
                        }
                        return null;
                      },
                    ),*/
                    RadioListTile(
                      activeColor: Colors.green,
                        title: Text("Soy mayor de edad"),
                        subtitle: Text("Eres mayor de edad si tienes mas de 18 años "),
                        value: "IS",
                        groupValue: _profession,
                        onChanged: (val) {
                          setState(() {
                            _profession = val ?? "NAN";
                          });
                        }),
                   /* RadioListTile(

                        title: Text("Ingeniero en Electronica"),
                        subtitle: Text("profesion numero 2 "),
                        value: "IE",
                        groupValue: _profession,
                        onChanged: (val) {
                          setState(() {
                            _profession = val ?? "";
                          });
                        }),
                    RadioListTile(
                        activeColor: Colors.yellow,
                        title: Text("Ingeniero Civil"),
                        subtitle: Text("profesion numero 3 "),
                        value: "IC",
                        groupValue: _profession,
                        onChanged: (val) {
                          setState(() {
                            _profession = val ?? "";
                          });
                        }),
                    RadioListTile(
                        activeColor: Colors.indigo,
                        title: Text("Ingeniero Aeronautivo"),
                        value: "IA",
                        groupValue: _profession,
                        onChanged: (val) {
                          setState(() {
                            _profession = val ?? "";
                          });
                        }),*/
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Eres mayor de edad??"),
                        Switch(
                            activeColor: Colors.red,
                            inactiveThumbColor: Colors.yellow,
                            trackColor:
                                MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                // Track color when the switch is selected.
                                if (states.contains(MaterialState.selected)) {
                                  return Colors.amber;
                                }
                                if (states.contains(MaterialState.hovered)) {
                                  return Colors.indigo;
                                }
                                // Otherwise return null to set default track color
                                // for remaining states such as when the switch is
                                // hovered, focused, or disabled.
                                return null;
                              },
                            ),
                            value: _isSelected,
                            onChanged: (val) {
                              setState(() {
                                _isSelected = val;
                              });
                            }),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        /// validación con el formulario
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Processing Data'),
                            ),
                          );
                        }
                        print("my proffesion is:  $_profession");

                        /// validaciones manuales
                        /*if (_isSelected) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Bienvenido, eres mayor de edad'),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Lo sentimos, no eres mayor de edad'),
                            ),
                          );
                        }*/
                      },
                      child: const Text('Submit'),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }

  void asyncMethod() async {
    Future.delayed(Duration(seconds: 2), () {
      print("hola");
    }).then((value) {
      print("a todos dos");
    });
    print("a todos");
  }

  bool isValidEmail(String email) {
    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return emailRegex.hasMatch(email);
  }
}
