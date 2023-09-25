import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(MaterialApp(home: Profile(),));
}
class Profile extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/images/person.jpg"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(FontAwesomeIcons.facebook,color: Colors.blue[900],),
              SizedBox(width:30),
              FaIcon(FontAwesomeIcons.google,color: Colors.deepOrange,),
              SizedBox(width:30),
              FaIcon(FontAwesomeIcons.twitter,color: Colors.lightBlueAccent,),
              SizedBox(width:30),
              FaIcon(FontAwesomeIcons.linkedin,color: Colors.blue[700],),
              SizedBox(width:30),
            ],
          ),
          ListTile(
            title: Center(child: Text("chromicle",style: TextStyle(fontSize: 30))),
            subtitle: Center(child: Text("@amFOSS",style: TextStyle(fontSize: 15))),
          ),
          ListTile(
            subtitle: Center(child: Text("Mobile App Developer and Open source enthusiastic",style: TextStyle(fontSize: 20))),
          ),
    SizedBox(height: 8),
    Expanded(
    child: ListView(children: [
    Container(
    decoration: BoxDecoration(
    border: Border.all(width: 1.0, color: Colors.grey),
    borderRadius: BorderRadius.circular(30)),
    child: ListTile(
    title: Text("Privacy"),
    leading: Icon(Icons.privacy_tip),
    trailing: FaIcon(FontAwesomeIcons.arrowRight,size: 15),
    )),
    SizedBox(height: 20),
    Container(
    decoration: BoxDecoration(
     border: Border.all(width: 1.0, color: Colors.grey),
    borderRadius: BorderRadius.circular(30)),
    child: ListTile(
    title: Text("Purchase History"),
    leading: Icon(Icons.history),
    trailing: FaIcon(FontAwesomeIcons.arrowRight,size: 15),
    )),
    SizedBox(height: 25),
    Container(
    decoration:BoxDecoration(
    border:Border.all(width:1.0,color:Colors.grey),
    borderRadius: BorderRadius.circular(30)
    ),
    child: ListTile(
    title: Text("Help & Support"),
    leading: Icon(Icons.help),
    trailing: FaIcon(FontAwesomeIcons.arrowRight,size: 15),
    )),
    SizedBox(height: 25),
    Container(
    decoration:BoxDecoration(
    border:Border.all(width:1.0,color:Colors.grey),
    borderRadius: BorderRadius.circular(30)
    ),
    child: ListTile(
    title: Text("Settings"),
    leading: Icon(Icons.settings),
    trailing: FaIcon(FontAwesomeIcons.arrowRight,size: 15),
    )),
    SizedBox(height: 25),
    Container(
    decoration:BoxDecoration(
    border:Border.all(width:1.0,color:Colors.grey),
    borderRadius: BorderRadius.circular(30)
    ),
    child: ListTile(
    title: Text("Invite a Friend"),
    leading: Icon(Icons.person_add_alt_1_rounded),
    trailing: FaIcon(FontAwesomeIcons.arrowRight,size: 15),
    )),
    SizedBox(height: 25),
    Container(
    decoration:BoxDecoration(
    border:Border.all(width:1.0,color:Colors.grey),
    borderRadius: BorderRadius.circular(30)
    ),
    child: ListTile(
    title: Text("Logout"),
    leading: Icon(Icons.logout),
    trailing: FaIcon(FontAwesomeIcons.arrowRight,size: 15),
    )),
    SizedBox(height: 50
    ),
        ],
      )
    )
        ]
    )
    );
  }
}