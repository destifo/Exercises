import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen Two')),
      body: SafeArea(
          child: Center(
        child: ElevatedButton(
          child: const Text('Return to the previous screen'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      )),
    );
  }
}
