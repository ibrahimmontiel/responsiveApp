import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive App'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            double fontSize = constraints.maxWidth / 10;
            return Text(
              'Hello, World!',
              style: TextStyle(fontSize: fontSize),
            );
          },
        ),
      ),
    );
  }
}
