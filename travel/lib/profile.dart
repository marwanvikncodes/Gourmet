import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/historym.dart';
import 'models/nature.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child:SingleChildScrollView(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children:[
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/r22.jpg'),
                      fit: BoxFit.cover),)
                  ),
              Padding(
            padding: const EdgeInsets.only(top: 120,left: 90),
            child: CircleAvatar(
              backgroundColor: Colors.white,

              child: CircleAvatar(
                backgroundImage: AssetImage('assets/rachel.jpg'),
                radius: 94,
              ),
              radius: 100,
            ),
          ),

                ],
              ),
              SizedBox(height: 5,),
              Text('Rachel Green',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              SizedBox(height: 3,),
              Text('rachelgreen7@gmail.com',),
              SizedBox(height: 10,),
              Wrap(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
                  IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.photo)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.people_outline)),
                  SizedBox(height: 10  ,),



                ],
              ),
              Container(

                height: 150,
                child: ListView.builder(
                  itemCount: promod.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ( context,  index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('${promod[index]['img']}'),
                            radius: 40,
                          ),
                          Text('${promod[index]['name']}'),
                        ],
                      ),
                    );
                  },

                ),
              ),
              Text(
                'My Favourite',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5,),
              Container(
                  height: 300,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: naturedata.length,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              children: [
                                Container(
                                  width: 250,
                                  height: 200,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          '${naturedata[index]['spot']}',
                                        ),
                                      )
                                  ),
                                  child: Stack(children: [
                                    Opacity(
                                        opacity: 0.5,
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            height: 30,
                                            width: 300,
                                            color: Colors.black,
                                          ),
                                        )),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '${naturedata[index]['name']}',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 18),
                                          ),
                                          Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                          )
                                        ],
                                      ),
                                    ),
                                  ]
                                  ),
                                ),



                              ],
                            )

                        );

                      })
              )
            ]
          ),
        ),
    ),
    );


  }
}
