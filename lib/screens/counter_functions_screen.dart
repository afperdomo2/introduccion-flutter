import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int _clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Counter functions screen',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                _clickCounter = 0;
              });
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.exposure_plus_2,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _clickCounter += 2;
                });
              },
            ),
          ],
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
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  _clickCounter++;
                });
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                setState(() {
                  _clickCounter--;
                });
              },
              child: const Icon(Icons.remove),
            )
          ],
        ));
  }
}
