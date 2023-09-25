import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: MusicPlayerUi(),));
}

class MusicPlayerU extends StatelessWidget{
  var images = ["https://live.staticflickr.com/7550/16236262561_422f7ed002.jpg",
    "https://i1.sndcdn.com/avatars-000323107180-0mrlt7-t500x500.jpg",
  "https://is1-ssl.mzstatic.com/image/thumb/Music126/v4/a7/6a/2c/a76a2c6a-36ca-f252-030e-23319fd57dcc/XELMOB22127.jpg/1200x1200bf-60.jpg",
  "https://t3.ftcdn.net/jpg/00/32/77/68/360_F_32776877_WVPnRNKsq0Sss5aVwgOe9e7xGwYCd1az.jpg",
  "https://i.scdn.co/image/ab67706c0000da84cd9bd13f71d8b16277e1092a",
  "https://i.scdn.co/image/ab67616d0000b2739da92b8aa7cbcd57a20fe10e",
  "https://c.saavncdn.com/078/Speed-Up-Instrumental-2022-20220726130227-500x500.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjNl545Zwvi3sAIg4wguSnojYYsG2T57qS3Q&usqp=CAU"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.black,
              floating: true,
              pinned: true,
              elevation: 0,
              centerTitle: true,
              title: Text(
                "Playlist",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink[200],
                ),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(70),
                child: Container(
                  color: Colors.black54,
                  padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 8),
                  child: TextField(
                    cursorColor: Colors.white10,
                    decoration: InputDecoration(
                      hintText: "Search...",
                      hintStyle: TextStyle(color: Colors.pink[200]),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.pink[200],
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:BorderSide(color: Colors.white10)
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage(images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
                childCount: images.length,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:  BottomNavigationBar(items:const [
        BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.home),
        label:  'Home'),
        BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.search),
        label: "Search"),
        BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.circle_sharp),
        label: "Playlist"),
        BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.keyboard_control_outlined),
        label: "Settings")
      ]),
    );
  }
}