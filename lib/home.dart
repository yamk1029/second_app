import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 16, 57, 117),
        title: Center(child: Text('Admin Dashboard', style: TextStyle(color: Colors.white),)),
        leading: IconButton(onPressed: (){

        },
        icon: Icon(Icons.arrow_back_sharp),color: Colors.white,),
        actions: [
          IconButton(onPressed: (){

          }, icon: Icon(Icons.notifications),color: Colors.white,),
          IconButton(onPressed: (){

          },
        icon: Icon(Icons.logout_outlined),color: Colors.white,)
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
                width: double.infinity,
              child: Card(
                elevation: 10,
                 shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                 ),
                  color: Colors.white,
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Welcome,', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                       SizedBox(height: 5,),
                       Text('Administrator')
                     ],
                   ),
                 ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Align(
             alignment: Alignment.centerLeft,            
              child: Text('Statistics', style: TextStyle(fontWeight: FontWeight.bold),)),
          ),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Icon(Icons.school),
                  Text('250'),
                  Text('Students')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}