
import 'package:flutter/material.dart';
import 'package:travel/detail.dart';
import 'package:travel/history.dart';
import 'package:travel/models/historym.dart';
import 'package:travel/models/nature.dart';
import 'package:travel/models/religionm.dart';
import 'package:travel/religion.dart';

import 'nature2.dart';
class attractions extends StatelessWidget {
  const attractions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Nature'),
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Nature()));
                    }, icon: Icon(Icons.arrow_forward))
                  ],
                ),
              ),
              Container(
                height: 180,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal  ,
                    itemCount: naturedata.length,
                    itemBuilder: (context,index){
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail(spot: naturedata[index]['spot'],
                              name: naturedata[index]['name'],
                            )));
                        },
                        child: Card(
                          child: Container(

                            height: 150,
                            width: 150,
                            child : Column(
                              crossAxisAlignment: CrossAxisAlignment.start ,
                              children: [
                                Container(
                                  height: 90,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(image: AssetImage('assets/${naturedata[index]['spot']}'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('${naturedata[index]['name']}',style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(height: 5,),
                                Text('Srilanka'),

                              ],


                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );

                    }),
              ),

              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Card(
              //     child: Container(
              //
              //       height: 150,
              //       width: 150,
              //       child : Column(
              //         crossAxisAlignment: CrossAxisAlignment.start ,
              //         children: [
              //           Container(
              //             height: 90,
              //             width: 150,
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(20),
              //               image: DecorationImage(image: NetworkImage(''
              //                   'https://media.istockphoto.com/id/1288385045/photo/snowcapped-k2-peak.jpg?s=612x612&w=0&k=20&c=sfA4jU8kXKZZqQiy0pHlQ4CeDR0DxCxXhtuTDEW81oo='),
              //                 fit: BoxFit.cover,
              //               ),
              //             ),
              //           ),
              //           SizedBox(height: 10,),
              //           Text('Lorem',style: TextStyle(fontWeight: FontWeight.bold),),
              //           SizedBox(height: 5,),
              //           Text('Srilanka'),
              //
              //         ],
              //
              //
              //       ),
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(20),
              //         color: Colors.white,
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('History'),
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context)=>History() ),);
                    }, icon: Icon(Icons.arrow_forward))
                  ],
                ),
              ),
              Container(
                height: 180,
                child: ListView.builder(
                    itemCount: historydata.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail(spot: historydata[index]['spot'],
                              name: historydata[index]['name'],
                             )));
                        },
                        child: Card(
                          child: Container(

                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child : Column(
                              crossAxisAlignment: CrossAxisAlignment.start ,
                              children: [
                                Container(
                                  height: 90,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(image: AssetImage('assets/${historydata[index]['spot']}'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('${historydata[index]['name']}',style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(height: 5,),
                                Text('Srilanka'),

                              ],


                            ),
                          ),
                        ),
                      );
                    }
                ),
              ),



              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Religious'),
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Religion()));
                    }, icon: Icon(Icons.arrow_forward))
                  ],
                ),
              ),
              Container(
                  height: 180,
                  child: ListView.builder(
                    itemCount: religiondata.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return  GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail(spot: religiondata[index]['spot'],
                              name: religiondata[index]['name'],
                             )));
                        },
                        child: Card(
                          child: Container(

                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child : Column(
                              crossAxisAlignment: CrossAxisAlignment.start ,
                              children: [
                                Container(
                                  height: 90,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(image: AssetImage('assets/${religiondata[index]['spot']}'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('${religiondata[index]['name']}',style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(height: 5,),
                                Text('Srilanka'),

                              ],


                            ),
                          ),
                        ),
                      );
                    },
                  )
              ),


            ],
          ),





        ),

        );
    }
}
