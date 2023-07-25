import 'package:flutter/material.dart';
import 'package:travel/detail.dart';
import 'package:travel/models/nature.dart';
class Nature extends StatelessWidget {
  const Nature ({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Nature',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
              Icon(Icons.arrow_forward),
            ],
          ),

        ),
        body: Container(
            height: double.infinity,
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2
            ),
                itemCount: naturedata.length,
                itemBuilder: (context,index){
                  return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail(spot: naturedata[index]['spot'], name: naturedata[index]['name'])));
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
                              ),
                            ),
                          ),
                        )]);

                }),
        ),
        );
    }
}
