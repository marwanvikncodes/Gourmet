
import 'package:flutter/material.dart';
import 'package:travel/detail.dart';
import 'package:travel/detail2.dart';

import 'models/homemodel.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:  SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Container(
      height: 250,
      width:600,
      decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
      image: DecorationImage(image: AssetImage('assets/4.png'),
      fit: BoxFit.cover),
      ),
   child:Column(
       children:
       [
         SizedBox(height: 45,),
         Text('Where you want to go?' ,style: TextStyle(color: Colors.black,fontSize: 20 ),),
       SizedBox(height: 10,),
         Padding(
         padding: const EdgeInsets.only(left: 30 ,right: 30),
         child: Container(
           height: 40,
           width: 300,
           child: TextField(decoration: InputDecoration(
             filled: true,
               fillColor: Colors.white,
               border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)
               ),
               labelText: 'Search...',suffixIcon: Icon(Icons.search)),),
         ),
       ),

       ],
   )
      ),
        SizedBox(height: 15,),
       Padding(
          padding: const EdgeInsets.only(left:20),
          child: Row(
            children: [

              Text('Suggestions',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.only(left: 246),
                child: Icon(Icons.arrow_forward_outlined),
              ),
            ],
          ),
        ),
      SizedBox(height: 15,),
      Padding(
      padding: const EdgeInsets.only(left: 19),
      child: Container(
        height: 150,
        child: ListView.builder(
          itemCount: homedata.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)  {
         return GestureDetector(onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail(spot: homedata[index]['spot'],
               name: homedata[index]['name'])),);
         },
           child: Card(
               shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(20)),
               elevation: 10,
               child: Container(
                 height: 150,
                 width: 150,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(50),
                   color: Colors.white70,),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                       height: 90,
                       width: 500,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15),
                         image: DecorationImage(image: AssetImage('assets/${homedata[index]['spot']}'), fit: BoxFit.cover),

                       ),),
                     SizedBox(height: 8,),
                     Padding(
                       padding: const EdgeInsets.only(left: 5),
                       child: Text('${homedata[index]['name']}', style: TextStyle(color: Colors.black,
                           fontSize: 15,
                           fontWeight: FontWeight.bold),),
                     ),
                     SizedBox(height: 3,),
                     Padding(
                       padding: const EdgeInsets.only(left: 5),
                       child: Text('Sri Lanka',
                         style: TextStyle(color: Colors.black, fontSize: 10),),
                     )
                   ],
                 ),

               ),

           ));}
        ),
      ),

      )
      ,


        Padding(
          padding: const EdgeInsets.only(left:20),
          child: Row(
            children: [

              Text('Top Rated',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.only(left: 266),
                child: Icon(Icons.arrow_forward_outlined),
              ),
            ],
          ),
        ),
        SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.only(left: 19),
          child: Container(
          height: 150,
            child: ListView.builder(
              itemCount: homedata.length,
                scrollDirection: Axis.horizontal ,
                itemBuilder: (context , index) {
              return GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail(spot: homedata[index]['spot'],
                    name: homedata[index]['name'])),);
              },
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  elevation: 10,

                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius. circular(20), color: Colors.white70,),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 90,
                        width: 500,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),image: DecorationImage(image: AssetImage('assets/${homedata[index]['spot']}'),fit: BoxFit.cover ), ),

                      ),
                      SizedBox(height: 8,),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text('Taj Mahal',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 3,),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Text('Delhi',style: TextStyle(color:Colors.black,fontSize: 10),),
                      )
                    ],
                  ),

                ),

        ),
              );})
            ),
          ),

      ]),
    ));   }





  }


