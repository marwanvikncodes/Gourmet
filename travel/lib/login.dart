import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage("https://c0.wallpaperflare.com/preview/709/439/609/india-manali-fog-mist.jpg")  ,
                fit: BoxFit.cover )),
         child: Column(
            children: [
              SizedBox(height: 80,),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: TextField(decoration: InputDecoration(labelText: 'Email',suffixIcon: Icon(CupertinoIcons.at)),),
        ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextField(decoration: InputDecoration(labelText: 'Password',suffixIcon:Icon(CupertinoIcons.eye_slash) ),),
              ),
              SizedBox(height: 80,),
              Container(
                height :35,
                width: 300,
                child: OutlinedButton(onPressed: (){}, child: Text('Login',style:TextStyle(color: Colors.black,fontSize: 15)),style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white70,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                  side: BorderSide(color: Colors.white,width :10))
                ),)
                  
              ),
              SizedBox(height: 20,),
              Container(
                child: TextButton(onPressed: (){}, child: Text('Forgot Password',style: TextStyle(color: Colors.white70,fontSize: 15)))
              ),
              SizedBox(height: 80,),
              Container(
                height: 35,
                width: 200,
                child: OutlinedButton(onPressed: (){}, child: Text('Sign in with Google',style: TextStyle(color: Colors.black),),style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white70,
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),

                    side:BorderSide(color: Colors.white,width :10),)
                ),)
              ),
       SizedBox(height: 20,),
       Container(
         height: 35,
         width: 200,
           color: Colors.blueAccent,
           child: ElevatedButton(onPressed: (){}, child: Row(
             children: [
               Icon(Icons.facebook),
               Text('Sign in with FaceBook',style: TextStyle(color: Colors.white)),
             ],
           ), )
       )


            ],


         ),
      ),


    );


  }
}
