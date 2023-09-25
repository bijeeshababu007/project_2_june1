import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: MusicPlayer1(),));
}
class MusicPlayer1 extends StatelessWidget {
  var name = ["Hero",
    "Unholy",
    "Lift Me Up",
    "Depression",
    "I'm Good"];

  var image = ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT00-NcsvlKw6IcIiX2-xrJVK9P8WE_Mb4NA&usqp=CAU',
    'https://lastfm.freetls.fastly.net/i/u/ar0/122ac2d43fcbaae2f02e7e5ce54eafdc.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6o4nzORoX4erLbdVMFo75tTWqrKwZIwPBBA&usqp=CAU',
    'https://i.scdn.co/image/ab6761610000e5eb2a9440635255a6f4f132fc64',
    'https://cdn.justjared.com/wp-content/uploads/headlines/2018/09/guetta-7.jpg'];

  var sub = ["Taylor Swift", "Sam Smith,Kim Petras", "Rihanna", "Dax","David Guetta & Beba Rexha"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Musify.",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red[100]),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
            child:Image.network("https://i.scdn.co/image/ab67706c0000da8491b2ba52a623cd03246aee74",
              height: MediaQuery.of(context).size.height *0.3,
              width: MediaQuery.of(context).size.height *0.3,
            fit: BoxFit.cover),
            ),
             const SizedBox(height: 30,),
            Row(
              children: [Text("Recommended for you",
                  style:TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red[100]),
              ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView(
                        children: List.generate(5, (index) => Card(
                           child: ListTile(
                           title: Text(name[index]),
                          subtitle: Text(sub[index]),
                           leading: CircleAvatar(
                           backgroundImage: AssetImage(image[index]),
                           ),
                           ),
                        ),
                        ),
                      ),
                    ),
                  ],
                ),],
            ),
        ),
    );
  }
}
