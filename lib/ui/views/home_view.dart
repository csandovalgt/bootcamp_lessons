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
  String _name = "";
  bool _isSelected = false;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
                    CustomFormField(
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
                    RadioListTile(
                        title: Text("HOmbre"),
                        value: "Carlos",
                        groupValue: _name,
                        onChanged: (val) {
                          setState(() {
                            _name = val ?? "";
                          });
                        }),
                    RadioListTile(
                        title: Text("Mujer"),
                        value: "Sandoval",
                        groupValue: _name,
                        onChanged: (val) {
                          setState(() {
                            _name = val ?? "";
                          });
                        }),
                    Switch(
                        value: _isSelected,
                        onChanged: (val) {
                          setState(() {
                            _isSelected = val;
                          });
                        }),
                    ElevatedButton(
                      onPressed: () {
                        /*if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Processing Data'),
                      ),
                    );
                  }*/
                        // asyncMethod();

                        print(_nameController.value.text);
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
}
