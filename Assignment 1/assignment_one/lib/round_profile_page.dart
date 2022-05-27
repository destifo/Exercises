import 'dart:math';

import 'package:flutter/material.dart';

class RoundProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _imageRadius = 400;

    // TODO: implement build
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: Center(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.grey[700]),
                    padding: EdgeInsets.all(13),
                    child: CircleAvatar(
                      radius: _imageRadius - 50,
                      backgroundImage: AssetImage("assets/destifo.jpg"),
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    right: 120,
                    child: Container(
                        child: Text(
                          "destifo B",
                          style: TextStyle(fontSize: 25),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.3))),
                  ),
                ],
              ),
            ),
          ),
          Expanded(flex: 5, child: Container())
        ],
      ),
    );
  }
}
