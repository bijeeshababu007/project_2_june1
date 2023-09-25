import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
void main(){
  runApp(MaterialApp(home : SignUp(),));
}
class SignUp extends StatelessWidget {
  String uname = "admin";
  String pwd   = "abc123";
//text editing con+
  TextEditingController usercontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: Container(
        width: double.infinity,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.black),
              ),
              SizedBox(height: 30,),
              Text("Create an Account,Its free",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black12,
                    fontSize: 15
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        controller: usercontroller,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.people),
                            hintText: "Email ID",
                            labelText: "Email ID"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20,bottom: 50),
                      child: TextField(
                        controller: passcontroller,
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.visibility_off_sharp),
                            hintText: "Password",
                            labelText: "Password"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20,bottom: 50),
                      child: TextField(
                        controller: passcontroller,
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.visibility_off_sharp),
                            hintText: "Password",
                            labelText: "Password"),
                      ),
                    ),
                    MaterialButton(
                      onPressed: (){},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                      ),
                      color: Colors.greenAccent[400],
                      child: Text("Sign Up",style: TextStyle(
                        fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white,
                      ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Text("do you have an account? Login",
                      style: TextStyle(
                          color: Colors.black12,
                          fontSize: 15
                      ),),
                  ],
                ),
              ),
            ]
        ),
      ),
    ),
    );
  }
}