// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dog.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: cat(),
//   ));
// }
//
// // List<doc> title = [
// //   doc(text3 : "jhvjv",   text1: "hkgchkg", text2: ",hjghvhgjv", text: "ghfgf"),
// //   doc(text1: "dfgxfd", text2: ",tdxtursd", text: "fddf"),
// //   doc(text1: "htrsu", text2: "trdyrt", text: "sare"),
// // ];
//
// List<Dog> flower = [];
//
// Future<List<Dog>> User() async {
//   final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
//   try {
//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body.toString());
//       for (Map i in data) {
//         flower.add(Dog.fromJson(i));
//       }
//       return flower;
//     } else {
//       print("erorr");
//       return flower;
//     }
//   } catch (e) {
//     print(e);
//     return flower;
//   }
// }
//
// class cat extends StatelessWidget {
//   const cat({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: FutureBuilder(
//       future: User(),
//       builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
//          return snapshot.data == null
//             ? Center(child: CircularProgressIndicator())
//             : ListView.builder(
//                 itemCount: flower.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       color: Colors.red,
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Text("userId" + flower[index].userId.toString()),
//                             Text("body\n" + flower[index].body.toString()),
//                             Text("title\n" + flower[index].title.toString()),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               );
//       },
//     ));
//   }
// }
//
// // class doc {
// //   final String? text3;
// //   final String? text;
// //   final String? text1;
// //   final String? text2;
// //
// //   doc(this.text3, {this.text, this.text1, this.text2});
// // }
