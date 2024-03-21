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
        title: Text(widget.grocery.name),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.favorite_border,), onPressed: () {},
          )
        ],
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
          ),
          Row(
            children: [
              Text("Rp. "),
              Text(widget.grocery.price)
            ],
          ),
          Row(
            children: [
              Icon(Icons.star),
              Text(widget.grocery.reviewAverage),
              Text(" | Stok: "),
              Text(widget.grocery.stock)
            ],
          ),
          Container(
            child: Row(
              children:[
                Icon(Icons.shop_2_rounded),
                SizedBox(width: 15),
                Text(widget.grocery.storeName)
              ],
            ),
          ),
          Text(
              widget.grocery.description
          ),
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
}
