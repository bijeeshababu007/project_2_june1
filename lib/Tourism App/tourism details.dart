import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Tourisan_Details(),));
}

class Tourisan_Details extends StatelessWidget {
  const Tourisan_Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 100,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Most Furious Place & Peaceful",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                Text("natural place",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Icon(Icons.star,color: Colors.yellow,),
                Icon(Icons.star,color: Colors.yellow,),
                Icon(Icons.star,color: Colors.yellow,),
                Icon(Icons.star,color: Colors.yellow,),
                Icon(Icons.star,color: Colors.yellow,),
                Icon(Icons.star,color: Colors.yellow,),
                SizedBox(width: 20,),
                Text("4.7 Rating")]
            ),
            ],
          ),
       ),
          //SizedBox(width: 100,),
      // Container(
      //       height: 50,
      //       width: 50,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(5),
      //         image: DecorationImage(
      //           fit: BoxFit.cover,
      //           image: NetworkImage("https://t4.ftcdn.net/jpg/01/57/39/27/360_F_157392702_RK2CbJrCfNbetZbTC1uubVqCgcHe6ucO.jpg"),
      //         )
      //       ),
      //     ),
          SizedBox(height: 30,),
          Container(
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text("About Place",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text('Nature caption for photos,short nature cations,natural beauty'
                        'quotes for Instagram,Instagram bio for nature lover: Nothing is as'
                        'beautiful and refreshing as natural As we are always ready for outdoor'
                        'adventures.'),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "Special Facilities",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                    Icon(Icons.local_parking, color: Colors.blue,),
                    Text("Parking", style: TextStyle(color: Colors.blue),),
                 SizedBox(width: 40,),
                    Icon(Icons.support_agent, color: Colors.blue,),
                    Text("24x7 Support", style: TextStyle(color: Colors.blue),),
                    SizedBox(width: 40,),
                    Icon(Icons.wifi, color: Colors.blue,),
                    Text("Free WiFi", style: TextStyle(color: Colors.blue),)
                  ],),
            ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("data:image/jpeg;base64,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"),
                ),
              ),
            ),
          ),
          const Text(
            "Special Facilities",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blueGrey[300],
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Adult"),
                        Text("02"),
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blueGrey[300],
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Adult"),
                        Text("02"),
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blueGrey[300],
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Adult"),
                        Text("02"),
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blueGrey[300],
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Adult"),
                        Text("02"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Explore now"),
              ),
            ),
          ),
     ]),
    );
  }
}
