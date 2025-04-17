import 'package:flutter/material.dart';
import 'package:second_app/study.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Todo App')),
        backgroundColor: const Color.fromARGB(255, 53, 25, 25),
      ),

      floatingActionButton: FloatingActionButton.extended(          //extended help to add label, icon both 
        onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=> Study(), ),); 
      },
        label: Text('Add'),
      ),
    );
  }
}