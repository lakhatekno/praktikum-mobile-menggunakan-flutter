import 'package:flutter/material.dart';
import 'package:kuis_123210096/groceries.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatefulWidget {
  final Groceries grocery;
  const DetailScreen({super.key, required this.grocery});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.grocery.name,
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.favorite_border,), onPressed: () {},
          )
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey.shade900,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: Image.network(widget.grocery.productImageUrls[0]),
          ),
          Text(
            widget.grocery.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text(
                groceryPrice(widget.grocery.price),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Text(widget.grocery.reviewAverage),
              Text(" | Stok: "),
              Text(widget.grocery.stock)
            ],
          ),
          Container(
            child: Row(
              children:[
                Icon(
                  Icons.shop_2_rounded,
                  color: Colors.green,
                ),
                SizedBox(width: 10),
                Text(widget.grocery.storeName)
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
              widget.grocery.description,
            style: TextStyle(

            ),
          ),
          SizedBox(height: 20,),
          FloatingActionButton(
            onPressed: (){
                _launchedUrl(widget.grocery.productUrl);
            },
            child: Icon(Icons.shopping_bag_sharp),
          ),
        ],
      ),
    );
  }
  Future<void> _launchedUrl(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception("gabisa masuk $_url");
    }
  }

  String groceryPrice(String price) {
    return "Rp. " + price;
  }
}
