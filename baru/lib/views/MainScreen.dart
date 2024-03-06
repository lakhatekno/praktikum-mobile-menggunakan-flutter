import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.play_arrow_rounded),
        title: Text(
            'Play Store',
            style: TextStyle(
              fontWeight: FontWeight.w900,
            ),
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search)
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings)
          )
        ],
        backgroundColor: Colors.lightGreen[700],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                color: Colors.white60,
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Text('Kotak Atas'),
              ),
              Container(
                color: Colors.white54,
                height: 190,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Ini Elevated Button',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white38,
                // height: 10,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    // Image.asset('assets/images/qr.png'),
                    Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQurwj4FbfstWXol8GhoBE_L-a6tVGIn7wXew&usqp=CAU')
                  ],
                ),
              ),
              Container(
                height: 100,
                color: Colors.white10,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.thumb_up_outlined),
                        Text('LIKE'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.thumb_down_outlined),
                        Text('DISLIKE'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.share_outlined),
                        Text('GUSTIAN'),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
