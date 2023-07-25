import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class D2 extends StatefulWidget {
  const D2({Key? key}) : super(key: key);

  @override
  State<D2> createState() => _D2State();
}

class _D2State extends State<D2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Container(
                height: 250,
                width:600,
                decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
                  image: DecorationImage(image: AssetImage('assets/taj.jpg'),
                      fit: BoxFit.cover),
                )
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Taj Mahal',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Icon(CupertinoIcons.heart),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Delhi',style: TextStyle(color: Colors.black,fontSize: 15),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('A beach is a narrow, gently sloping strip of land that lies along the edge of an ocean, lake, or river. Materials such as sand, pebbles, rocks, and seashell fragments cover beaches. Most beach materials are the products of weathering and erosion. Over many years, water and wind wear away at the land.'),
            ),
          ],

        )
    );

  }
}
