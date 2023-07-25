import 'package:flutter/material.dart';
import 'package:travel/detail.dart';
import 'package:travel/models/historym.dart';
class History extends StatelessWidget {
  History({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('History'),
            Icon(Icons.arrow_forward),
          ],
        ),

      ),
      body: Container(
        height: double.infinity,
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
        ),
            itemCount: historydata.length,
            itemBuilder: (context,index){
              return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail(spot:historydata[index]['spot'],name:historydata[index]['name'])));
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
                                Text('${historydata[index]['detail']}',style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(height: 5,),
                                Text('${historydata[index]['description']}'),

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

