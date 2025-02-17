import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Counter Screen")),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$clickCounter",
                  style: const TextStyle(
                      fontSize: 160, fontWeight: FontWeight.w100)),
              if (clickCounter == 1)
                const Text("Click",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.w100)),
              if (clickCounter != 1)
                const Text("Clicks",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.w100)),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            clickCounter++;
            setState(() {});
          },
          child: const Icon(Icons.plus_one),
        ));
  }
}
