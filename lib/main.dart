import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_screen.dart';

void main () {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
<<<<<<< HEAD
        useMaterial3: true,
        colorSchemeSeed: Colors.teal[600]
=======
        useMaterial3: false,
>>>>>>> 0b9e9b99c9a52664ad3b802363d78927394524a9
      ),
      home: CounterScreen()
    );
  }
}