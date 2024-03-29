import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Login Page'),
        
      ),
      body: SingleChildScrollView(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.92,
            color: Colors.grey[200],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 310,
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10), // Atur radius border di sini
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/bima.png',
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'BIMA',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ), // BIMA
                      Text(
                        'Sistem Informasi Akademik',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[600]
                        ),
                      ), // siakad
                      SizedBox(height: 20,),
                      Container(
                        width: 201,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                                labelText: 'Username / NIM',
                                labelStyle: TextStyle(
                                  fontSize: 12,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ), // username
                            SizedBox(height: 10,),
                            TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                    fontSize: 12,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                              ),
                            ), // password
                            SizedBox(height: 15,),
                            TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all(Colors.white),
                                  backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
                                  minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                    'Masuk',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.7,
                                    fontSize: 14
                                  ),
                                ),
                            ), // button login
                            SizedBox(height: 5),
                            Text(
                              'Lupa password?',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey[700]
                              ),
                            )
                          ],
                        ),
                      ) // form container
                    ],
                  ),
                )
              ],
            )
        ),
      ),
    );
  }
}
