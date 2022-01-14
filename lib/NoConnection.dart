import 'package:flutter/material.dart';
import 'dart:async';

import 'package:wehsas/Web_View.dart';




class NoConnexion extends StatefulWidget {
  const NoConnexion({Key? key}) : super(key: key);

  @override
  _NoConnexionState createState() => _NoConnexionState();
}

class _NoConnexionState extends State<NoConnexion> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
           Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Web_View()),);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("Assets/logo.jpg",
              height: 120,),
            const SizedBox(
              height: 80,
            ),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
            ),
            const Text("Waiting for connection ..." , style: TextStyle(
              color: Colors.amber,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),)
          ],
        ),
      ),
    );
  }
}