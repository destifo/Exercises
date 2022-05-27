// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'recipe.dart';
// import 'recipe_detail.dart';

// class RecipeListScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(title: Text("Recipe list")),
//       body: ListView.builder(
//           itemCount: Recipe.recipes.length,
//           itemBuilder: (BuildContext context, index) {
//             return GestureDetector(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   return RecipeDetail(Recipe.recipes[index]);
//                 }));
//               },
//               child: Container(
//                   height: 300,
//                   width: double.infinity,
//                   color: Colors.red,
//                   child: Column(
//                     children: [
//                       Text(recipes[index]["name"]),
//                       Image(image: AssetImage(recipes[index]["imageUrl"]))
//                     ],
//                   )),
//             );
//           }
//           // children: [
//           //   ,
//           //   Container(
//           //     height: 300,
//           //     width: double.infinity,
//           //     color: Colors.blue,
//           //     child:
//           //         Image(image: AssetImage('assets/27729023535_a57606c1be.jpg')),
//           //   ),
//           //   Container(
//           //     height: 300,
//           //     width: double.infinity,
//           //     color: Colors.green,
//           //     child:
//           //         Image(image: AssetImage('assets/27729023535_a57606c1be.jpg')),
//           //   )
//           // ],
//           ),
//     );
//   }
// }
