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
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Musify.",
          style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red[200]),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Suggested playlist",
              style: TextStyle(color: Colors.red[200],
                  fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://i.scdn.co/image/ab67706c0000da84fb193c265e5c4ba22d153cc4"),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/b9/de/d7/b9ded714-598a-4566-dfe8-2ecd1d8958f4/artwork.jpg/1200x1200bf-60.jpg"),
                   ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Recommended For You",
              style: TextStyle(
                  color: Colors.red[200],
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 600,
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Container(
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(image[index]),
                      ),
                    ),
                  ),
                  title: Text(
                    name[index],
                    style:TextStyle(color: Colors.red[200], fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    sub[index],
                    style: const TextStyle(
                        color: Colors.white70, fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: const Wrap(
                    spacing: 5,
                    children: [
                      Icon(Icons.star_border, color: Colors.pinkAccent,
                      ),
                      Icon(
                        Icons.download_outlined, color: Colors.pinkAccent,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
