import 'package:flutter/material.dart';
import 'package:parcial/temas/colores.dart';


class vistamenu3 extends StatelessWidget {
  final String name = 'Chavez Portillo Balmoré Rafael';
  final String studentID = '25-0040-2019';

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carta de presentación',
      home: Scaffold(
          backgroundColor: bgColor,
        appBar: AppBar(
          title: Text('Account'),
            backgroundColor: bgColor,
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              SizedBox(height: 20),
              Text(
                'CHAVEZ PORTILLO BALMORE RAFAEL',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                '25-0040-2019',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}