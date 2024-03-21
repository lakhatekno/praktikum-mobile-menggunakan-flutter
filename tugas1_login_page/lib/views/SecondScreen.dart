import 'package:flutter/material.dart';
import 'package:tugas1_login_page/views/DetailPage.dart';
import '../tourism_place.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Kedua"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(place: place) ));
            },
            child: Card(
              child: Column(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    child: Image.network(place.imageUrls[0]),
                  ),
                  Text(place.name),
                ],
              )
            ),
          );
        },
        itemCount: tourismPlaceList.length,
      ),
    );
  }
}