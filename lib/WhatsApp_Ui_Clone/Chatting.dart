import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Chatting(),));
}

class Chatting extends StatelessWidget {
  const Chatting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Ammu"),
        centerTitle: false,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.video_call),),
          SizedBox(width: 5,),
          IconButton(onPressed: (){}, icon: Icon(Icons.call),),
          SizedBox(width: 5,),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),),

        ],
      ),
      body: const Column(
        children: [
           TextField(
             decoration: InputDecoration(
               filled: true,
               fillColor: Colors.white70,
               prefixIcon: Padding(
                 padding:EdgeInsets.symmetric(horizontal: 20),
                   child: Row(
                     children: [Icon(Icons.emoji_emotions,color: Colors.yellow,)],
                   ),
               ),
               suffixIcon: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
               child: Icon(Icons.emoji_emotions_outlined,color: Colors.yellow,),)
             ),
           )
        ],
      ),
    );
  }
}
