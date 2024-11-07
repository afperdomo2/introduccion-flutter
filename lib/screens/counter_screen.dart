import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter screen',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_clickCounter',
              style:
                  const TextStyle(fontSize: 150, fontWeight: FontWeight.w100),
            ),
            Text(
              'Click${_clickCounter == 1 ? '' : 's'}',
              style: const TextStyle(
                fontSize: 25,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _clickCounter++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
