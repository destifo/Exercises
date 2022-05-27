import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String imageURL;
  final String title;
  final String description;

  const ImageCard(
      {Key? key,
      required this.imageURL,
      required this.title,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // height: 200,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(imageURL), fit: BoxFit.cover)),
      child: Stack(
        children: [
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(11),
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.4)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              fontSize: 19, color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          description,
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                    // const SizedBox(
                    //   width: 5,
                    // ),
                    IconButton(
                      onPressed: () {
                        print("debug");
                      },
                      iconSize: 28,
                      icon: Icon(
                        Icons.star_border,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
