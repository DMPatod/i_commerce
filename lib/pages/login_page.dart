import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  final String title = "Login";

  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        widget.title,
      )),
      body: Center(
          child: Column(
        children: [
          Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(hintText: "username"),
                    controller: usernameController,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: "password"),
                    controller: passwordController,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                      onPressed: () {
                        final scaffold = ScaffoldMessenger.of(context);
                        if (_formKey.currentState!.validate()) {
                          scaffold.showSnackBar(SnackBar(
                              content: Text(
                                  "${usernameController.text} and ${passwordController.text}")));
                        }
                      },
                      child: const Text("LOGIN"))
                ],
              ))
        ],
      )),
    );
  }
}
