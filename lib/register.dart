import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(
    home: Register(),
  ));
}

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var formkey =GlobalKey<FormState>();
  bool passvisibility1 = true;
  bool passvisibility2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Registeration page'),),
        body: Form(
            child: Column(
          children: [
            Image.asset(
              "assets/icons/icon3.png",
              height: 100,
              width: 100,
            ),
            const Text(
              "Registration Page",
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter name',
                    labelText: 'Name',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    errorStyle: TextStyle(fontSize: 18.0),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(50))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'phone number',
                    labelText: 'phn no',
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(50))),
                validator: (phone) {
                  if (phone!.isEmpty || phone.length < 10) {
                    return "Fields are empty or phone length must be >=10 ";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter Username',
                    labelText: 'Username',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    errorStyle: TextStyle(fontSize: 18.0),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(50))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 15),
              child: TextFormField(
                obscuringCharacter: "*",
                obscureText: passvisibility1,//showpass = true initialy
                decoration: InputDecoration(
                    suffixIcon: IconButton(onPressed: () {
                      setState((){
                        if(passvisibility1 == true){
                          passvisibility1 = false;
                        }else{
                          passvisibility1 == true;
                        }
                      });
                    },
                        icon: Icon(passvisibility1 == true ?Icons.visibility_off_sharp : Icons.visibility)),
                    hintText: "Enter PassWord",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
                validator: (pass) {
                  if (pass!.isEmpty || pass.length < 6) {
                    return "Fields are empty or password length must be >=6";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 15),
              child: TextFormField(
                obscureText:  passvisibility2,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  suffixIcon: IconButton(onPressed: () {
                    setState((){
                      if(passvisibility2 == true){
                        passvisibility2 = false;
                      }else{
                        passvisibility2 == true;
                      }
                    });
                  },
                     icon : Icon(passvisibility2 == true ?Icons.visibility_off_sharp : Icons.visibility)),
                    hintText: "Confirm Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
                validator: (pass) {
                  if (pass!.isEmpty || pass.length < 6) {
                    return "Fields are empty or password length must be >=6";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            ElevatedButton(onPressed: () {
              final valid = formkey.currentState!.validate();
              if(valid){
                Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Register()));
              }else{
                Fluttertoast.showToast(
                    msg: "Invalid Username or Password",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.TOP,
                    // timeInSecForIosWeb: 1,
                    backgroundColor: Colors.white,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              }
            }, child: null,),
            MaterialButton(
              onPressed: (){},
              shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
              ),
              color: Colors.blue,
              child: Text("Register",style: TextStyle(
                  fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white70
              ),
              ),
            ),
          ],
            ),
        ),
    );
  }
}