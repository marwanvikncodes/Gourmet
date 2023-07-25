import 'package:flutter/material.dart';
import 'package:travel/detail.dart';
import 'package:travel/models/historym.dart';
import 'package:travel/models/religionm.dart';
class Religion extends StatelessWidget {
  const Religion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Religion'),
            Icon(Icons.arrow_forward),
          ],
        ),

      ),
      body: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail(spot: 'spot', name: 'name')));
        },
        child: Container(
          height: double.infinity,
          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
          ),
              itemCount: religiondata.length,
              itemBuilder: (context,index){
                return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail(spot:religiondata[index]['spot'],name:religiondata[index]['name'])));

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
                                  Text('Lorem',style: TextStyle(fontWeight: FontWeight.bold),),
                                  SizedBox(height: 5,),
                                  Text('Srilanka'),

                                ],


                              ),
                            ),
                          ),
                        ),
                      )]);

              }),
        ),
      ),
    );
  }
}
