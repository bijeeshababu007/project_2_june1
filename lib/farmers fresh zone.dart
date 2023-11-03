import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: FarmersFreshZone(),));
}
class FarmersFreshZone extends StatelessWidget {

  var category=["VEGETABLES","FRUITS","EXOTIC","FRESH CUTS","Nutrition Chargers","Packed Flavors"];

  var images =["https://t3.ftcdn.net/jpg/00/34/61/76/360_F_34617669_p9r4GrR83TBEXCZrRny6AaigqPUEPFp5.jpg",
    "https://static.toiimg.com/photo/99546165.cms",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAxIi7E5TSbtZRX_n0o_0EayyJTw57qHx7YN-jhQZerpaPY1WAiMZzPDSBue4EBa3QWIg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIQ9xB-HbnPnFTWPLInxrA6z8r7f93iAWPOQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIQ9xB-HbnPnFTWPLInxrA6z8r7f93iAWPOQ&usqp=CAU",
  "data:image/jpeg;base64,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"];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: CustomScrollView(slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            floating: true,
            pinned: false,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Farmer Fresh Zone",
                  style: GoogleFonts.openSans(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.location_on),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Kochi',
                      style: TextStyle(fontSize: 15),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_drop_down))
                  ],
                )
              ],
            ),
            bottom: AppBar(
              toolbarHeight: 81,
              backgroundColor: Colors.green,
              title: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusColor: Colors.white,
                  hintStyle: const TextStyle(color: Colors.grey),
                  hintText: "Search for Vegetables,Fruits...",
                  prefixIconColor: Colors.grey,
                  prefixIcon: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.search_sharp),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    height: 50.0,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            width: 200.0,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  backgroundColor: Colors.green.shade100,
                                ),
                                onPressed: () {},
                                child: Text(
                                  category[index],
                                  style: TextStyle(
                                      color: Colors.green.shade900,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          );
                        })),
              )),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300)),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        Icon(
                          Icons.timer,
                          color: Colors.green,
                          size: 30,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("30 MINS POLICY"),
                      ]),
                      Column(children: [
                        Icon(
                          Icons.phone_iphone_outlined,
                          color: Colors.green,
                        ),
                        Text("TRACEBILITY"),
                      ]),
                      Column(children: [
                        Icon(Icons.engineering_sharp, color: Colors.green),
                        Text("LOCAL SOURCING")
                      ]),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Shop By Category',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.45,
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 200,
                        mainAxisSpacing: 0,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) => Card(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.network(
                                images[index],
                                fit: BoxFit.fill,
                                height: 100,
                                width: 120,
                              ),
                              Text(category[index]),
                            ],
                          ),
                        ),
                      )),
                ),
              ],
            ),
          )
        ]),
      ),
      bottomNavigationBar:BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    selectedItemColor: Colors.greenAccent[400],
    items: const [  BottomNavigationBarItem(
    backgroundColor: Colors.green,
    icon: Icon(Icons.home),
    label: 'HOME'),
    BottomNavigationBarItem(
    backgroundColor: Colors.green,
    icon: Icon(Icons.shopping_cart),
    label: 'CART'),
    BottomNavigationBarItem(
    icon: Icon(Icons.person_outline),
      label: 'ACCOUNT'),
    ],
      ),
      );
  }
}
