import 'package:flutter/material.dart';
import 'package:kuis_123210096/groceries.dart';

import 'DetailScreen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Text(
              "IFStore",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.green.shade800,
          foregroundColor: Colors.white,
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
                // width: MediaQuery.of(context).size.width / 2,
                // height: 4,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 200,
                      height: 150,
                      child: Image.network(grocery.productImageUrls[0]),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      groceryName(grocery.name),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      groceryDiscount(grocery.discount),
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.green,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    Row(
                      children: [
                        Text("Rp. "),
                        Text(grocery.price)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow.shade800,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          grocery.reviewAverage,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade800
                          ),
                        )
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

  String groceryName(String name) {
    String newName = "";
    if (name.length > 30) {
      newName = name.substring(0, 30);
      newName += "...";
    } else {
      newName = name;
    }
    return newName;
  }

  String groceryDiscount(String discount) {
    if (discount != "0%")
      return discount = "Diskon " + discount + "!";
    return "Harga Termurah";
  }
}
