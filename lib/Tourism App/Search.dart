import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Search(),));
}

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    var images = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUR94ovvRwIxg9vcGSKMD6aHzuwhzWZHex-w&usqp=CAU",
      "https://www.eyenews.news/media/imgAll/2023February/en/hm-2303151451.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDjQ0V8FZpSsxrUPdm9Oa39skhjxkGvnF2jw&usqp=CAU",
      "https://www.thomascook.in/blog/wp-content/uploads/2017/09/Untitled-design-min.jpg"];

    return Scaffold(
        body: Center(
          child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.white,
                  leading: const Icon(Icons.menu, color: Colors.black,),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Go", style: TextStyle(fontSize: 30,
                          fontWeight: FontWeight.bold, color: Colors.blue),),
                      SizedBox(width: 1,),
                      Text("Fast", style: TextStyle(fontSize: 30,
                          fontWeight: FontWeight.bold, color: Colors.black),)
                    ],
                  ),
                  actions: const [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blueAccent,
                    )
                  ],
                  bottom: AppBar(
                    backgroundColor: Colors.white,
                    title: Container(
                      width: double.infinity,
                      height: 40,
                      color: Colors.white,
                      child: const Center(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search for something',
                            suffixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    const SizedBox(
                      height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Popular Places",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              SizedBox(width: 200),
                              Text(
                                "View All",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                  ),
                ),
                const SizedBox(height: 20,),
                SliverToBoxAdapter(
                  child: ListView.builder(
    itemCount: 2,
                    itemBuilder:  (context, index) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListTile(
    leading:Container(
                                  height: 200,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                           image: NetworkImage(
                                               images[index]))),
              //                     child: Stack(
              //                       children: [
              //                         Positioned(
              //                           top: 10,
              //                           left: 10,
              //                           child: Container(
              //                             height: 40,
              //                             width: 70,
              //                             decoration: BoxDecoration(
              //                               color: Colors.blue[900],
              //                               borderRadius: BorderRadius.circular(
              //                                   10),
              //                             ),
              //                             child: Center(
              //                               child: Padding(
              //                                 padding: const EdgeInsets.all(8),
              //                                 child: Text(
              //                                   iteratedplace["listcount"],
              //                                   style: const TextStyle(
              //                                       color: Colors.white,
              //                                       fontWeight: FontWeight
              //                                           .bold),
              //                                 ),
              //                               ),
              //                             ),
              //                           ),
              //                         ),
              //                         Positioned(
              //                           left: 15,
              //                           bottom: 15,
              //                           child: Text(
              //                             iteratedplace["name"],
              //                             style: TextStyle(
              //                               color: Colors.white,
              //                               fontSize: 18,
              //                               fontWeight: FontWeight.bold,
              //                             ),
              //                           ),
              //                         )
              //                       ],
              //   SliverToBoxAdapter(
              //       child: Container(
              //         height: 60,
              //         child: Padding(
              //           padding: const EdgeInsets.all(10.0),
              //           child: ElevatedButton(
              //             style:
              //             ElevatedButton.styleFrom(
              //                 backgroundColor: Colors.blue[700]),
              //             onPressed: () {},
              //             child: const Text("Explore Now"),
              //           ),
              //         ),
              //       ))
              // ]),
        )
        )
    )
    )
    )
        ]
    )
        )
    );
  }
}
