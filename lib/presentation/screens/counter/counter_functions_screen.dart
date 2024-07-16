import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Counter Functions")),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
          ],
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
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                clickCounter++;
                setState(() {});
              },
              child: const Icon(Icons.plus_one),
            ),
            FloatingActionButton(
              onPressed: () {
                clickCounter--;
                setState(() {});
              },
              child: const Icon(Icons.exposure_minus_1),
            ),
          ],
        ));
  }
}
