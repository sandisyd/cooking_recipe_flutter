import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key? key}) : super(key: key);

  var bahan = [
    {
      'gambar': 'img/home/detail/mie_basah.jpg',
      'title': 'Mie Basah',
      'subtitle': '500 gram Mie Telur/Mie Basah',
    },
    {
      'gambar': 'img/home/detail/daging_ayam.jpg',
      'title': 'Daging Ayam',
      'subtitle': '250 gram Daging Ayam, Rebus & Potong Kotak-Kotak',
    },
    {
      'gambar': 'img/home/detail/kecap_asin.jpg',
      'title': 'Kecap Asing',
      'subtitle': '100 ml',
    },
    {
      'gambar': 'img/home/detail/kecap_manis.jpg',
      'title': 'Kecap Manis',
      'subtitle': '50 ml',
    },
    {
      'gambar': 'img/home/detail/kecap_inggris.jpg',
      'title': 'Kecap Inggris',
      'subtitle': '15 ml',
    },
    {
      'gambar': 'img/home/detail/daun_bawang.jpg',
      'title': 'Daun Bawang',
      'subtitle': '2 Batang, Iris Halus',
    },
    {
      'gambar': 'img/home/detail/sawi.jpeg',
      'title': 'Sawi',
      'subtitle': '1 Ikat Sawi Hijau, potong 5cm',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Mie Ayam',
          style: TextStyle(color: Colors.black),
        ),
        actions: [Icon(CupertinoIcons.ellipsis_vertical)],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
          child: Column(
            children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    image: const DecorationImage(
                        image: AssetImage('img/home/mie_ayam.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.7),
                    child: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text(
                  'Inggredients (7)',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '1 Serving',
                        style:
                            TextStyle(fontFamily: 'Arial', color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ]),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: bahan.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Container(
                          height: 75,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.green.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: ListTile(
                              title: Text('${bahan[index]['title']}'),
                              subtitle: Text('${bahan[index]['subtitle']}'),
                              leading: Image(
                                  image:
                                      AssetImage('${bahan[index]['gambar']}')),
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding:
            const EdgeInsets.only(left: 30, top: 15, right: 30, bottom: 15),
        child: MaterialButton(
            // minWidth: 250,
            height: 50,
            color: Colors.green,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Mulai Memasak!',
                  style: TextStyle(
                      color: Colors.white, fontSize: 17, fontFamily: 'Arial'),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                )
              ],
            ),
            onPressed: () {}),
      ),
    );
  }
}
