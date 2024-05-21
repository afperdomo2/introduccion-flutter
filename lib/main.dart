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
      title: "AlertDialogs",
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
  Company facebook = Company("Facebook", "Mark Zuckerberg", 1000000);
  Company google = Company("Google", "Sundar Pichai", 2000000);
  Company apple = Company("Apple", "Tim Cook", 3000000);

  @override
  // initState: Método que se ejecuta al iniciar el StatefulWidget
  void initState() {
    super.initState();
    print(facebook.name);
    print(facebook.ceo);
    print(facebook.income);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Mi App"),
        ),
        body: Center(child: Text(facebook.name)));
  }
}

class Company {
  String name;
  String ceo;
  int income;

  Company(this.name, this.ceo, this.income);
}
