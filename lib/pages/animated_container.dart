import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _width = 100.0;
  double _height = 100.0;
  Color _color = Colors.red;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10.0);

  void _changeContainer() {
    setState(() {
      final random = Random();

      _width = random.nextInt(350).toDouble();
      _height = random.nextInt(350).toDouble();

      _color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);

      _borderRadius = BorderRadius.circular(random.nextInt(40).toDouble());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AnimatedContainer',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AnimatedContainer',
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: AnimatedContainer(
                    duration: const Duration(milliseconds: 380),
                    curve: Curves.fastOutSlowIn,
                    width: _width,
                    height: _height,
                    decoration: BoxDecoration(
                      color: _color,
                      borderRadius: _borderRadius,
                    )),
              ),
            ),
            Column(children: [
              Text("Width: ${_width.toStringAsFixed(2)}"),
              Text("Height: ${_height.toStringAsFixed(2)}"),
              Text("Color: ${_color.toString()}"),
              Text("Border Radius: ${_borderRadius.toString()}"),
            ]),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                onPressed: _changeContainer,
                child: const Text("Generate a random container",
                    style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
    );
  }
}
