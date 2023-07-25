import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Detail extends StatefulWidget {

  Detail({Key? key,required this.spot,required this.name}) : super(key: key);
var spot,name;
  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {

  var is_selected=false;

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
    image: DecorationImage(image: AssetImage('assets/${widget.spot}'),
    fit: BoxFit.cover),
    )
        ),
       SizedBox(height: 25,),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text(widget.name,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
              IconButton(onPressed: (){
               setState(() {
                 is_selected=!is_selected;
               });
             }, icon: (is_selected)?Icon(Icons.favorite,color: Colors.red,size: 30,):Icon(Icons.favorite_border,color: Colors.red,size: 35,)),
           ],
         ),
       ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Text('Sri Lanka',style: TextStyle(color: Colors.black,fontSize: 15),),
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
