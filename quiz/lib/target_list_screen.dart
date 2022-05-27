import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'target.dart';

class TargetListScreen extends StatelessWidget {
  const TargetListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
              child: Column(children: [
                Expanded(
                  child: Container(),
                  flex: 1,
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (BuildContext context, index) {
                      return const Target();
                    },
                  ),
                  flex: 1,
                ),
              ]),
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              color: Colors.white,
            ),
            flex: 1,
          )
        ],
      ),
    );
  }
}
