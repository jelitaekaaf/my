import 'package:flutter/material.dart';
import 'detail_wisata_screen.dart';

class ListWisataScreen extends StatelessWidget {
  final List<Map<String, dynamic>> wisataData = [
    {
      "nama": "Pegunungan",
      "kota": "Bromo",
      "image": "assets/images/gunung.jpg",
      "gallery": [
        "assets/images/g1.jpg",
        "assets/images/g2.jpg",
        "assets/images/g3.jpg"
      ],
      "desc": "Pegunungan merupakan kumpulan atau gugusan beberapa gunung besar dan juga kecil yang memanjang dan sambung menyambung menjadi satu antara satu dengan yang lainnya"
    },
    {
      "nama": "Pantai",
      "kota": "Bali",
      "image": "assets/images/pantai.jpg",
      "gallery": [
        "assets/images/p1.jpg",
        "assets/images/p2.jpg",
        "assets/images/p3.jpg"
      ],
      "desc": "Pantai adalah daerah di tepi perairan yang dipengaruhi oleh air pasang tertinggi dan surut terendah."
    },
    {
      "nama": "Persawahan",
      "kota": "Bandung",
      "image": "assets/images/sawah.jpg",
      "gallery": [
        "assets/images/s1.jpg",
        "assets/images/s2.jpg",
        "assets/images/s3.jpg"
      ],
      "desc": "Sawah, carik, atau bendang adalah tanah yang digarap dan diairi untuk tempat menanam padi."
    },
     
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Alam'),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(97, 27, 195, 33),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: wisataData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailWisataScreen(
                        nama: wisataData[index]["nama"],
                        kota: wisataData[index]["kota"],
                        image: wisataData[index]["image"],
                        gallery: wisataData[index]["gallery"],
                        desc: wisataData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(
                      image: AssetImage(wisataData[index]["image"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    wisataData[index]["nama"],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}