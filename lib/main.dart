import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home : Main(),));
}
class Main extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MainState();
  }
  class _MainState extends State<Main>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Container(
       width: double.infinity,
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Hello There!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),
          ),
          SizedBox(height: 30,),
          Text("Automatic identity verification which enable you to verify your identity",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 15
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height/3,
            decoration: BoxDecoration(
                image:DecorationImage(
                    image: AssetImage("assets/images/hmp.jpg"))
            ),
          ),
          SizedBox(height: 40),
        MaterialButton(
          onPressed: (){},
             shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
            ),
          color: Colors.greenAccent[700],
          child: Text("Login",style: TextStyle(
              fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white70
          ),
          ),
        ),
          SizedBox(height: 15),
          MaterialButton(
            onPressed: (){},
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
            ),
            color: Colors.greenAccent[400],
            child: Text("Sign UP",style: TextStyle(
              fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white,
            ),
            ),
          ),
        ],
      ),
    ),
      ),
    );
  }

}