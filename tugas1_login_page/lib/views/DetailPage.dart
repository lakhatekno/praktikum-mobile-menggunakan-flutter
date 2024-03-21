import 'package:flutter/material.dart';
import 'package:tugas1_login_page/tourism_place.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatefulWidget {
  final TourismPlace place;
  const DetailScreen({super.key, required this.place});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.place.name),
      ),
      body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 150,
              child: Image.network(widget.place.imageUrls[0]),
            ),
            Text(
              widget.place.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
                widget.place.description
            ),
            FloatingActionButton(
              onPressed: (){
                _launchedUrl('https://youtube.com/');
              },
              child: Icon(Icons.messenger_outline_rounded),
            )
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
