// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image with Shadow and Text'),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              'https://example.com/your-image.jpg',
              fit: BoxFit.cover,
            ),
            Positioned(
              left: 20,
              right: 20,
              bottom: 100, // Adjust positioning as needed
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white, // Background color of the container
                ),
                child: Text(
                  'Your Text Here',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 20,
              child: Center(
                child: Text(
                  'Above Image',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
