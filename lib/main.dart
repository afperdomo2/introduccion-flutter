import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

// StatelessWidget: Widget que no puede cambiar su estado interno
class MyApp extends StatelessWidget {
  const MyApp({super.key});

// MaterialApp: Widget que contiene la estructura de la app
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Mi App",
      home: HomePage(),
    );
  }
}

// StatefulWidget: Widget que puede cambiar su estado interno
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// State: Estado interno del StatefulWidget
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: ListView(
          children: [
            Container(
              color: Colors.green,
              padding: const EdgeInsets.all(20.0),
              child: Image.network("https://picsum.photos/300?image=9"),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Image.network("https://picsum.photos/300?image=9"),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Image.network("https://picsum.photos/300?image=9"),
            ),
          ],
        ));
  }
}
