import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App Bar'),
      ),
      body: const Center(
        child: Text('Counter screen'),
      ),
    );
  }
}
