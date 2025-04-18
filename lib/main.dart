import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:second_app/todo_list.dart';
//import 'package:todo_app/screen/todo_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true ),
      debugShowCheckedModeBanner: false,
        home: const Home(),
    );

  }
}