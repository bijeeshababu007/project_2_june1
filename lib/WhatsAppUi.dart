import 'package:flutter/material.dart';
import 'package:project_2_june1/WhatsApp_Ui_Clone/chat%20page.dart';
import 'WhatsApp_Ui_Clone/Calls.dart';
import 'WhatsApp_Ui_Clone/Status.dart';

void main() {
  runApp(MaterialApp(home:WhatsAppUi()));
}

class WhatsAppUi extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
    child:Scaffold(
      appBar: AppBar(
    elevation: 0,
      title:const Padding(
        padding: EdgeInsets.only(top:15),
       child: Text('WhatsApp',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
    ),
        actions: [
          const Padding(padding: EdgeInsets.only(top: 10,right: 15),
          child: Icon(Icons.search, size: 28,),),
          PopupMenuButton(
            onSelected:(click){ Navigator.pushNamed(context,"SettingsPage");
            },
            elevation: 10,
            padding: const EdgeInsets.symmetric(vertical: 20),
            iconSize: 28,
            itemBuilder: (context) => [
              const PopupMenuItem(
                  value: 1,
                  child: Text("New Group", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,),
                  ),
              ),
              const PopupMenuItem(
                value: 1,
                child: Text("New broadcast", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,),
                ),
              ),
              const PopupMenuItem(
                value: 1,
                child: Text("Linked devices", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,),
                ),
              ),
              const PopupMenuItem(
                value: 1,
                child: Text("Payments", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,),
                ),
              ),
              const PopupMenuItem(
                value: 1,
                child: Text("Settings", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,),
                ),
              ),],
          )],
    ),
     body: Column(
       children: [
         Container(
           color: Colors.greenAccent[700],
           child: TabBar(
             isScrollable: true,
             indicatorColor: Colors.white,
             indicatorWeight: 4,
             labelStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
             tabs: [
               const SizedBox(width: 10 ,),
               Container(
                 width :24,
                 child: const Tab(icon: Icon(Icons.camera_alt),
                 ),
               ),
               const SizedBox(width: 10),
               Container(width: 90, child: Tab(child: Row(children: [const Text("CHATS"),
                     Container(
                       alignment: Alignment.center,
                       height: 22,
                       width: 22,
                       decoration: BoxDecoration(color: Colors.white,
                         borderRadius: BorderRadius.circular(20),
                       ),
                       child: Text("6",style: TextStyle(color:Colors.greenAccent[200],fontSize: 14),),
                     ),
                   ],),
                 ),
               ),
               Container(
                 width: 85,child: const Tab(child: Text("STATUS"),),),
               Container(
                 width: 90,child: const Tab(child: Text("CALLS"),),),
             ],
           ),
         ),
         Flexible(flex: 1,
         child: TabBarView(
           children: [
             Container(),
             ChatPage(),
             Status(),
             Calls(),
           ],
         ),)
       ],
     ),
    ),
    );
  }
}



