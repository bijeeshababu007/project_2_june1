import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ChatPage()));
}
class ChatPage extends StatelessWidget{
  var name = ["abi",
    "biji",
    "devu",
    "ammu",
    "paru",
    "gouri"];

  var image = ['assets/images/img1.jpg',
    'assets/images/img2.jpg',
    'assets/images/img3.jpg',
    'assets/images/img4.jpg',
    'assets/images/img5.jpg',
    'assets/images/img6.jpg'];

  var message = ["hi", "hello", "di", "mrng", "hey","gni8"];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("WhatsApp"),
        actions: [
          Icon(Icons.camera_alt),
          SizedBox(width: 20,),
          Icon(Icons.search ),
          SizedBox(width: 20,),
          PopupMenuButton(itemBuilder : (context){
            return[
              PopupMenuItem(child: Text('New Group')),
              PopupMenuItem(child: Text("New broadcast")),
              PopupMenuItem(child: Text("Linked device")),
              PopupMenuItem(child: Text("Starres message")),
              PopupMenuItem(child: Text("Payments")),
              PopupMenuItem(child: Text("Settings")),
            ];
          },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: List.generate(
              6,
                  (index) => Card(
                  child: ListTile(
                    title: Text(name[index]),
                    subtitle: Text("\$ ${message[index]}"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(image[index]),
                    ),
                    trailing: const Wrap(
                        direction: Axis.vertical,
                        children: [Text("11.00"),
                          SizedBox(width: 10,),
                          CircleAvatar(
                            maxRadius: 8,
                            minRadius: 4,
                            backgroundColor: Colors.green,
                            child: Text('3'),
                          )
                        ]),
                  )
              )),
        ),
      ),
    );
  }

}