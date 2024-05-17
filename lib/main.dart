import "package:flutter/cupertino.dart";
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
      body: Container(
        child: loginContainer(),
      ),
    );
  }
}

Widget loginContainer() {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://image.freepik.com/foto-gratis/fondo-abstracto-color-azul-oscuro_53876-87592.jpg"),
            fit: BoxFit.cover)),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        titleLogin(),
        userTextField(),
        passwordTextField(),
        loginButton()
      ],
    )),
  );
}

Widget titleLogin() {
  return const Text("Sing in",
      style: TextStyle(
          fontSize: 40, fontWeight: FontWeight.bold, color: Colors.cyan));
}

Widget userTextField() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: const TextField(
      decoration: InputDecoration(
          hintText: "User", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget passwordTextField() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Password", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget loginButton() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.cyan,
            textStyle: const TextStyle(fontSize: 17),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          ),
          child: const Text(
            "Login",
            style: TextStyle(color: Colors.white),
          )),
    ),
  );
}
