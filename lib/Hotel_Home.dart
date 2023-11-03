import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Hotel_Home(),));
}
class Hotel_Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue[400],
          leading: const Icon(Icons.menu),
          actions: const [
            Icon(Icons.favorite_border),
          ],
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Type your Location",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Bouddha,kerala",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.pink,
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.hotel,
                        color: Colors.white,
                      ),
                      Text(
                        "Hotel",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.restaurant,
                        color: Colors.white,
                      ),
                      Text(
                        "Restaurant",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.orange[600],
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.local_cafe,
                        color: Colors.white,
                      ),
                      Text(
                        "Cafe",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
          Container(
          height: 400,
    width: double.infinity,
    decoration: const BoxDecoration(
    color: Colors.black,
    image: DecorationImage(
    opacity: .5,
    fit: BoxFit.cover,
    image: NetworkImage("https://media.cnn.com/api/v1/images/stellar/prod/140127103345-peninsula-shanghai-deluxe-mock-up.jpg?q=w_2226,h_1449,x_0,y_0,c_fill"),
    ),
    ),
           child: const Icon(Icons.star_border,),
          ),
              Container(
                padding: const EdgeInsets.all(32.0),
                color: Colors.white,
                child:  const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children:[
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Awesome room near Bounddha",style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,fontSize: 20.0),
                              ),
                              Text("Bouddha,Kathmandu",style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey
                              ),)
                            ],
                          ),
                        ),
                        Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star,color: Colors.purple,),
                                  Icon(Icons.star,color: Colors.purple,),
                                  Icon(Icons.star,color: Colors.purple,),
                                  Icon(Icons.star,color: Colors.purple,),
                                  Icon(Icons.star,color: Colors.purple,),
                                  Icon(Icons.star,color: Colors.purple,),],
                              ),],),
                      ],
                    ),
                  ],
                ),
              ),],),]),
    );
  } }