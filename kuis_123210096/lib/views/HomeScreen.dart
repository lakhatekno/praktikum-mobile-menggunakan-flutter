import 'package:flutter/material.dart';
import 'package:kuis_123210096/groceries.dart';

import 'DetailScreen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Groceries List"),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            final Groceries grocery = groceryList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(grocery: grocery)));
              },
              child: Card(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 150,
                      child: Image.network(grocery.productImageUrls[0]),
                    ),
                    Text(
                      grocery.name
                    ),
                    Row(
                      children: [
                        Text("Rp. "),
                        Text(grocery.price)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star),
                        Text(" "),
                        Text(grocery.reviewAverage)
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: groceryList.length
        ),
      );
  }
}
