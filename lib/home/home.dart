import 'package:cooking_recipe_flutter/home/detail/detailPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int a_index = 0;
  int b_index = 0;

  var menu = [
    {'title': 'All', 'gambar': 'img/home/homepage.png'},
    {'title': 'Mie Ayam', 'gambar': 'img/home/bookmark.png'},
    {'title': 'Sayur Sop', 'gambar': 'img/home/bag.png'},
    {'title': 'Ketoprak', 'gambar': 'img/home/user.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey.withOpacity(0.1),
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Temukan Resep Makanan \nKesukaan Anda',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15)),
                            hintText: 'Find Destination'),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      height: 50,
                      width: 55,
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Image(
                          image: AssetImage('img/home/edit.png'),
                          color: Colors.green,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: menu.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                a_index = index;
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: a_index == index
                                      ? Colors.green
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Text(
                                  '${menu[index]["title"]}',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: a_index == index
                                          ? Colors.white
                                          : Colors.grey,
                                      fontFamily: 'Arial',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailPage()));
                  },
                  child: Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('img/home/mie_ayam.jpg'),
                            fit: BoxFit.cover),
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.5),
                                Colors.white.withOpacity(0.3)
                              ])),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 20,
                            right: 20,
                            child: Container(
                              height: 50,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Padding(
                                padding: EdgeInsets.all(10),
                                child: Image(
                                  image: AssetImage('img/home/bookmark.png'),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 330,
                            left: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Mie Ayam',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontFamily: 'Arial',
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '7 Inggredients | 60 Min',
                                  style: TextStyle(
                                    color: Colors.white,
                                    // fontSize: 18,
                                    fontFamily: 'Arial',
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width / 4,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        b_index = index;
                      });
                    },
                    child: Image(
                      image: AssetImage(
                        '${menu[index]['gambar']}',
                      ),
                      color: b_index == index ? Colors.black : Colors.grey,
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
