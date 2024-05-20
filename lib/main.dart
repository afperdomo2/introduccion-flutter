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
  // Declaración de variables
  bool _isSubscribed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Mi App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  _showAlert(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: const Text(
                  "To subscribe",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                _isSubscribed ? "You are subscribed" : "You are NOT subscribed",
                style: const TextStyle(fontSize: 18),
              )
            ],
          ),
        ));
  }

  void _showAlert(BuildContext context) {
    showDialog(
        context: context,
        // barrierDismissible: Evita que el usuario cierre el dialogo al hacer clic fuera de él
        barrierDismissible: false,
        // builder: Función que retorna el widget del dialogo
        builder: (context) {
          return AlertDialog(
            title: Text(_isSubscribed ? "Unsubscribe" : "Subscribe"),
            content: Text(_isSubscribed
                ? "Do you want to unsubscribe?"
                : "Do you want to subscribe?"),
            actions: [
              TextButton(
                  onPressed: () {
                    print("---> Cancel");
                    Navigator.of(context).pop();
                  },
                  child: const Text("Cancel")),
              TextButton(
                  onPressed: () {
                    // setState: Función que actualiza el estado del widget
                    setState(() {
                      print("---> Ok");
                      _isSubscribed = !_isSubscribed;
                    });
                    Navigator.of(context).pop();
                  },
                  child: const Text("Accept")),
            ],
          );
        });
  }
}
