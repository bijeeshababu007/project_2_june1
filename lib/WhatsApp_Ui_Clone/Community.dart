import 'package:flutter/material.dart';
import 'package:project_2_june1/WhatsApp_Ui_Clone/chat%20page.dart';

import 'Calls.dart';
import 'Status.dart';

void main() {
  runApp(MaterialApp(home:Community()));
}

class Community extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("WhatsApp"),
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
                const PopupMenuItem(child: Text("Starres message")),
                const PopupMenuItem(child: Text("Payments")),
                const PopupMenuItem(child: Text("Settings")),
              ];
            },
            ),
          ],

        ),
      ),
    );
  }
}



