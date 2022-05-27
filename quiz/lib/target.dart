import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Target extends StatelessWidget {
  const Target({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 120,
      padding: const EdgeInsets.all(8),
      child: Stack(children: [
        Positioned(
          bottom: 0,
          child: Container(
            color: Colors.black,
            height: 100,
            width: 100,
          ),
        ),
        Positioned(
            top: 0,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              height: 100,
              width: 100,
            )),
        Positioned(
            top: 11,
            left: 11,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(40)),
              height: 80,
              width: 80,
            )),
        Positioned(
            top: 19,
            left: 20,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(30)),
              height: 60,
              width: 60,
            )),
        Positioned(
            top: 29,
            left: 30,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
              height: 40,
              width: 40,
            )),
        Positioned(
            top: 37,
            left: 38,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(12)),
              height: 24,
              width: 24,
            )),
        const Positioned(
            bottom: 90, left: 38, child: Center(child: Icon(Icons.add))),
      ]),
    );
  }
}
