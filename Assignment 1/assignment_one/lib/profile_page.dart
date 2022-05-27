import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/gang.jpg"), fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios_new_sharp),
                        onPressed: () {
                          print("");
                        },
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              icon: Icon(Icons.edit_outlined),
                              onPressed: () {
                                print("");
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.more_vert),
                              onPressed: () {
                                print("");
                              },
                            ),
                          ])
                    ],
                  ),
                  Center(
                    child: Container(
                      decoration:
                          BoxDecoration(color: Colors.black.withOpacity(0.6)),
                      child: Text(
                        "Estifanos Bireda",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            ),
            flex: 5,
          ),
          Expanded(
            child: Container(),
            flex: 6,
          ),
        ],
      ),
    );
  }
}
