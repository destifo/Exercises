import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(),
              ),
              validator: (String? email) {
                if (email == null || email.isEmpty) {
                  return "Email must not be empty.";
                }
                final emailPattern = RegExp("[A-Za-z]@[A-Za-z].[A-Za-z]");

                return null;
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "password",
                border: OutlineInputBorder(),
              ),
              validator: (String? password) {
                if (password == null || password.isEmpty) {
                  return "Email must not be empty.";
                }
              },
            ),
            ElevatedButton(
              onPressed: () {
                final formValid = formKey.currentState!.validate();

                if (!formValid) {}
              },
              child: Icon(
                Icons.save,
              ),
            )
          ],
        ),
      )),
    );
  }
}
