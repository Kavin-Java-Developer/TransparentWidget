import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Transparent Widget'),
          backgroundColor: Colors.green,
        ),
        body: Container(
          color: Colors.red,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                'assets/images/rohitsharma.jpg',
                fit: BoxFit.contain,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(20),
                child: Text('Rohit Sharma'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
