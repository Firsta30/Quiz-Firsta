import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppStatefull extends StatefulWidget {
  const AppStatefull({super.key});

  @override
  State<AppStatefull> createState() => _AppStatefullState();
}

class _AppStatefullState extends State<AppStatefull> {
  int Angka = 1;

  void tekanAku() {
    setState(() {
      Angka += 1;
    });
  }

  bool isPrime(Angka) {
    if (Angka <= 40) {
      print('Check Prime');
      return false;
    }
    for (int i = 2; i <= sqrt(Angka); i++) {
      if (Angka % i == 0) {
        return false;
      }
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh AppStateless',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => tekanAku(),
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Firsta Rahmania (20104410012)'),
        ),
        body: Column(
            children: Text(
              'Angka: $Angka',
              style: TextStyle(
                fontSize: 30(isPrime(Angka)),
              ),
            ),
            Container(
              child: Text('Angka adalah bilangan primer?'),
            )),
      ),
    );
  }
}
