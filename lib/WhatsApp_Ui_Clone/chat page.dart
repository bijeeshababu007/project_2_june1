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

  var message = ["hi", "hello", "di", "hlo", "hey","hy"];

  var time = ["3.59 pm","3.17 pm","2.48 pm","12.45 pm","12.33 pm","10.34 am"];

  var num = ["1","2","1","2","1","3"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("WhatsApp"),
        actions: [
          const Icon(Icons.camera_alt),
          const SizedBox(width: 20,),
          const Icon(Icons.search ),
          const SizedBox(width: 20,),
          PopupMenuButton(itemBuilder : (context){
            return[
              const PopupMenuItem(child: Text('New Group')),
              const PopupMenuItem(child: Text("New broadcast")),
              const PopupMenuItem(child: Text("Linked device")),
              const PopupMenuItem(child: Text("Starred message")),
              const PopupMenuItem(child: Text("Payments")),
              const PopupMenuItem(child: Text("Settings")),
            ];
          },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: List.generate(6,
                  (index) => Card(
                  child: ListTile(
                    title: Text(name[index]),
                    subtitle: Text("${message[index]}"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(image[index]),
                    ),
                    trailing:  Wrap(
                        direction: Axis.vertical,
                        children: [
                          Text(time[index]),
                          SizedBox(width: 10,),
                          CircleAvatar(
                            maxRadius: 8,
                            minRadius: 4,
                            backgroundColor: Colors.green,
                            child: Text(num[index]),
                          )
                        ]),
                  )
              )),
        ),
      ),
    );
  }

}