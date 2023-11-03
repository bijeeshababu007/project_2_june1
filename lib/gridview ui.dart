import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Shopping()));
}
class Shopping extends StatelessWidget {
    var name=['Vagabond sack','Sunglass','Whitney belt','Watch','Strut earrings','Varsity socks'];
    var price=[120.00,58.00,35.00,98.00,34.00,12.00];
    var image = ["assets/images/bag.png","assets/images/glass.jpg","assets/images/belt.png","assets/images/chain.png","assets/images/earrings.png","assets/images/socks.png"];
    @override

    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('SHRINE'),
      actions:<Widget> [
        IconButton(
          icon: Icon(Icons.search,color: Colors.white,),
          onPressed: () {},
        ),
      ],
      ),
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          childrenDelegate: SliverChildListDelegate(List.generate(6, (index) =>
              Card(
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage(image[index]),
                            ),
                        ),
                      ),
                      SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),),
                      Text(name[index]),
                      Text("\$ ${price[index]}"),
                    ],
                  ),
                ),
              ),
          ),
          ),
      ),
    );
  }

}
