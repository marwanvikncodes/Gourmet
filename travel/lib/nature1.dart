// import 'package:flutter/material.dart';
// import 'package:travel/models/nature.dart';
// class Nature1 extends StatefulWidget {
//   const Nature1({Key? key}) : super(key: key);
//
//   @override
//   State<Nature1> createState() => _Nature1State();
// }
//
// class _Nature1State extends State<Nature1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GridView.builder(gridDelegate:
//         SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2
//     ),
//           itemCount: naturedata.length,
//           itemBuilder: (context,index) {
//             return Container(
//               children: [
//                 Card(
//                   elevation: 5,
//                   child: Container(
//                     height: 141,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15)
//                     ),
//                     child: Column(
//                       crossAxisAlignment:
//                       CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           height: 80,
//                           width: 150,
//                           decoration: BoxDecoration(
//                               image: DecorationImage(image: AssetImage(
//                                   'assests/${naturedata[index]['spot']}'),
//                                   fit: BoxFit.cover),
//                               borderRadius: BorderRadius.circular(12)),
//                           child: Text('${naturedata[index]['name']}',
//                             style: TextStyle(color: Colors.black, fontSize: 13),),
//                         ),
//                       ],),
//
//                   ),
//                 ),
//               ],
//             );
//           }),
//         );
//     }
//
//   }
//
