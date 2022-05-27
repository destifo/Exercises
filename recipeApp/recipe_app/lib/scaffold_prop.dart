import 'package:flutter/material.dart';
import 'image_card.dart';

class ScaffoldProp extends StatefulWidget {
  ScaffoldProp({Key? key}) : super(key: key);

  @override
  State<ScaffoldProp> createState() => _ScaffoldPropState();
}

class _ScaffoldPropState extends State<ScaffoldProp> {
  @override
  Widget build(BuildContext context) {
    final gridList = [
      {
        "title": "Mountains",
        "description": "Simon Mountain",
        "imageURL": "assets/nature1.webp"
      },
      {
        "title": "Rivers",
        "description": "destifo Rivers",
        "imageURL": "assets/nature2.jpg"
      },
      {
        "title": "Mountains",
        "description": "Simon Mountain",
        "imageURL": "assets/nature3.jpg"
      },
      {
        "title": "Rivers",
        "description": "destifo Rivers",
        "imageURL": "assets/nature4.jpg"
      },
    ];
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Telegram"),
        ),
        drawer: Drawer(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(7),
              height: 150,
              decoration:
                  BoxDecoration(color: Colors.greenAccent.withOpacity(0.4)),
              child: Column(
                children: [
                  Expanded(
                      flex: 6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.person)),
                          Text("Person Name")
                        ],
                      )),
                  Expanded(
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 15,
                        ),
                        Text("Phone Number")
                      ],
                    ),
                    flex: 4,
                  )
                ],
              ),
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.contacts),
                SizedBox(
                  width: 20,
                ),
                Text("Contacts")
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.phone),
                SizedBox(
                  width: 20,
                ),
                Text("Calls")
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.settings),
                SizedBox(
                  width: 20,
                ),
                Text("Settings")
              ],
            )
          ],
        )),
        body: Container(
          // padding: EdgeInsets.all(7),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
            ),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              index = index % 3;
              return Container(
                padding: const EdgeInsets.all(9),
                child: ImageCard(
                    imageURL: gridList[index]["imageURL"]!,
                    title: gridList[index]["title"]!,
                    description: gridList[index]["description"]!),
              );
            },
          ),
        ),
      ),
    );
  }
}
