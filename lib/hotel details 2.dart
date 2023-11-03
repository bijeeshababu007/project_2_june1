import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: HotelDetail(),));
}

class HotelDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            foregroundDecoration: const BoxDecoration(
              color: Colors.black26
            ),
            height: 400,
              child: Image.asset("assets/images/hotel.jpg",fit: BoxFit.cover,)),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 16.0,bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 250,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal:16.0),
                  child: Text("Crowne Plaza Kochi, Kerala",
                    style: TextStyle(color:Colors.white,
                    fontSize: 28.0,fontWeight: FontWeight.bold),
                  ),
                ),
              Row(
                children: [
                  const SizedBox(width: 16.0),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20.0)),
                    child: const Text("8.4/85 reviews",
                      style: TextStyle(color: Colors.white,fontSize: 13.0),
                    ),
                  ),
                  const Spacer(),
                  IconButton(color: Colors.white,icon: const Icon(Icons.favorite_border),
                      onPressed: () {},
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(32.0),
                 color: Colors.white,
                 child:  Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     const Row(
                 children:[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.purple,),
                    Icon(Icons.star,color: Colors.purple,),
                    Icon(Icons.star,color: Colors.purple,),
                    Icon(Icons.star,color: Colors.purple,),
                    Icon(Icons.star,color: Colors.purple,),
                    Icon(Icons.star,color: Colors.purple,),
                  ],
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text:"8 km to LuluMall"
                  )
                ]),style: TextStyle(color: Colors.grey,fontSize: 12.0),)
                   ],
                 ),
               ),
          Column(
            children: [
              Text("\$200",style: TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.bold,fontSize: 20.0),
              ),
              Text("/per night",style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey
              ),)
            ],
          ),
            ],
                  ),
      const SizedBox(height: 30.0,),
     SizedBox(
       width: double.infinity,
       child:MaterialButton(
         onPressed: (){},
         shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(50)
         ),
         color: Colors.purple,
    child:Text("Book Now",style: TextStyle(
      fontWeight: FontWeight.normal,color: Colors.white),),
    padding: const EdgeInsets.symmetric(
      vertical:16.0,
      horizontal:32.0,),
     ),
    ),
    const SizedBox(height:30.0),
    Text("Ramada Plaza Plam Grove".toUpperCase(),
      style: const TextStyle(fontWeight: FontWeight.w600,
          fontSize: 14.0),
    ),
    const SizedBox(height: 10.0,),
    const Text("Nestled by Vembanad Lake,Crowne Plaza Kochi is a luxurious property catering to corporate and social gatherings. With modern design, exceptional hospitality, and a strategic location, it offers convenience for business and leisure travelers.",
      textAlign:TextAlign.justify,
      style: TextStyle(fontWeight: FontWeight.w300,
          fontSize: 14.0),),
                     const SizedBox(height: 10.0,),
                     const Text("Crowne Plaza Kochi is ideally located on the new business district of the city NH 47 Bypass and provides easy access to Info Park Kakkanad, Cochin Special Economic Zone, M.G. Road, Cochin Port, Shipyard, Naval Base, major sightseeing areas like Fort Kochi, Mattancherry and is 45 minutes away from Cochin International Airport.", textAlign:TextAlign.justify,
                       style: TextStyle(fontWeight: FontWeight.w300,
                           fontSize: 14.0),)
              ],
            ),
          ),
    ],
      ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
             centerTitle: true,
             title: const Text("DETAILS",style: TextStyle(fontSize:16.0 ,fontWeight:FontWeight.normal ),),
            ),
          ),
        ],
      ),
    );
  }
}


