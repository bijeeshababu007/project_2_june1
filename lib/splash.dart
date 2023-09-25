import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:Splash(),));
}
class Splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/fruitbg.jpg"))
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/icons/icon 5.jpg",
                    color: Colors.white,
                    height: 100,
                    width: 100,
                  ),
                     Column(
                       children :<Widget>[
                        Text(
                        "Fresh  Foods",
                        style:TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                    ),
                      Padding(padding: EdgeInsets.only(right: 10.0),),
          Text("Tasty & Healthy",
              style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.normal,
                  color: Colors.white),),
                ],
              ),
          ],
          ),
        ],
      ),
    ),
    ),
    );
  }



}
