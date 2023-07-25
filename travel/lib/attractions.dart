// import 'package:flutter/material.dart';
// import 'package:travel/History.dart';
// import 'package:travel/Religion.dart';
// import 'package:travel/detail.dart';
// import 'package:travel/models/nature.dart';
// import 'package:travel/nature2.dart';
// class Attract extends StatefulWidget {
//   const Attract({Key? key}) : super(key: key);
//
//   @override
//   State<Attract> createState() => _AttractState();
// }
//
// class _AttractState extends State<Attract> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//           children:[
//             SizedBox(height: 20,),
//             Padding(
//               padding: const EdgeInsets.only(left:20),
//               child: Row(
//                 children: [
//
//                   Text('Nature',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 252),
//                 child:IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Nature()));},
//                   icon: Icon(Icons.arrow_forward))
//                   ),
//                 ],
//               ),
//             ),
//
//           SizedBox(height: 10,),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: ListView.builder(
//     scrollDirection: Axis.horizontal,
//               itemCount: naturedata.length,
//               itemBuilder: (context,index){
//       return GestureDetector(
//         onTap: (){
//           Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail(spot: naturedata[index]['spot'],
//               name: naturedata[index]['name'])));
//         },
//             child: Card(
//               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//               elevation: 10,
//               child: Container(
//                 height: 150,
//                 width: 150,
//                 decoration: BoxDecoration(borderRadius: BorderRadius. circular(50), color: Colors.white70,),
//                 child:Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       height: 90,
//                       width: 500,
//                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),image: DecorationImage(image: AssetImage('assets/${naturedata[index]['spot']}'),fit: BoxFit.cover ),
//                       ),
//                       ),
//                     SizedBox(height: 8,),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 5),
//                       child: Text('${naturedata[index]['name']}',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
//                     ),
//                     SizedBox(height: 3,),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 5),
//                       child: Text('Sri Lanka',style: TextStyle(color:Colors.black,fontSize: 10),),
//                     )
//                   ],
//                 ),
//
//               ),
//             ),
//                   );
//
//
//
//
//     SizedBox(height: 20,),
//     Padding(
//     padding: const EdgeInsets.only(left:20),
//     child: Row(
//     children: [
//
//     Text('History',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
//     Padding(
//     padding: const EdgeInsets.only(left: 248),
//       child:IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>History()));}, icon: Icon(Icons.arrow_forward),),    ),
//     ],
//     ),
//     ),
//
//     SizedBox(height: 10,),
//     Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Card(
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//     elevation: 10,
//     child: Container(
//     height: 150,
//     width: 150,
//     decoration: BoxDecoration(borderRadius: BorderRadius. circular(50), color: Colors.white70,),
//     child:Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//     Container(
//     height: 90,
//     width: 500,
//     decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),image: DecorationImage(image: AssetImage('assets/taj.jpg'),fit: BoxFit.cover ),),
//
//     ),
//     SizedBox(height: 8,),
//     Padding(
//     padding: const EdgeInsets.only(left: 5),
//     child: Text('Taj Mahal',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
//     ),
//     SizedBox(height: 3,),
//     Padding(
//     padding: const EdgeInsets.only(left: 5),
//     child: Text('Sri Lanka',style: TextStyle(color:Colors.black,fontSize: 10),),
//     )
//     ],
//     ),
//
//     ),
//     ),),
//               SizedBox(height: 10,),
//             Padding(
//               padding: const EdgeInsets.only(left:20),
//               child: Row(
//                 children: [
//
//                   Text('Religious',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 248),
//                     child:IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Religion()));}, icon: Icon(Icons.arrow_forward),),                  ),
//                 ],
//               ),
//             ),
//
//             SizedBox(height: 10,),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Card(
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//                 elevation: 10,
//                 child: Container(
//                   height: 150,
//                   width: 150,
//                   decoration: BoxDecoration(borderRadius: BorderRadius. circular(50), color: Colors.white70,),
//                   child:Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         height: 90,
//                         width: 500,
//                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),image: DecorationImage(image: AssetImage('assets/r22.jpg'),fit: BoxFit.cover ),),
//
//                       ),
//                       SizedBox(height: 8,),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 5),
//                         child: Text('Lorta',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
//                       ),
//                       SizedBox(height: 3,),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 5),
//                         child: Text('Dubai',style: TextStyle(color:Colors.black,fontSize: 10),),
//                       )
//                     ],
//                   ),
//
//                 ),
//               ),),
//
//             ]
//         ),
//       ),
//     );
//   }
// }
