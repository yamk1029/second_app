//import 'dart:convert';
import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
//import 'package:second_app/models/post.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List<Post> postList = [];

  // Future<List<Post>> getPostApi() async {
  //   final response =
  //       await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  //   var data = jsonDecode(response.body.toString());
  //   if (response.statusCode == 200) {
  //     postList.clear();
  //     for (Map<String, dynamic> i in data) { // Change this line 
  //        postList.add(Post.fromJson(i)); // Fixed this line
  //     }
  //     return postList;
  //   } else {
  //     return postList;
  //   }
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   getPostApi();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 16, 57, 117),
        title: const Center(
            child: Text(
          'Admin Dashboard',
          style: TextStyle(color: Colors.white),
        )),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_sharp),
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout_outlined),
            color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Welcome Card
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Colors.white,
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome,',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text('Administrator')
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // Statistics Header
            const Padding(
              padding: EdgeInsets.all(14.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Statistics',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),

            // Statistics Cards
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      MyCard(
                        icon: Icons.school,
                        number: '250',
                        label: 'Students',
                        color: Colors.blue,
                      ),
                      SizedBox(width: 16),
                      MyCard(
                        icon: Icons.people,
                        number: '30',
                        label: 'Faculty',
                        color: Colors.green,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      MyCard(
                        icon: Icons.menu_book,
                        number: '45',
                        label: 'Courses',
                        color: Colors.orange,
                      ),
                      SizedBox(width: 16),
                      MyCard(
                        icon: Icons.person,
                        number: '180',
                        label: 'Active Users',
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Management Header
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Management',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                ),
              ),
            ),

            // Management Cards
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                children: [
                  managementCard(
                    icon: Icons.manage_accounts_rounded,
                    bgColor: const Color.fromARGB(255, 176, 226, 250),
                    title: 'User Management',
                    subtitle: 'Add, edit or remove users',
                  ),
                  const SizedBox(height: 20),
                  managementCard(
                    icon: Icons.book,
                    bgColor: const Color.fromARGB(255, 97, 218, 151),
                    title: 'Course Management',
                    subtitle: 'Manage courses and content',
                  ),
                  const SizedBox(height: 20),
                  managementCard(
                    icon: Icons.notifications,
                    bgColor: const Color.fromARGB(255, 250, 219, 115),
                    title: 'Notification Management',
                    subtitle: 'Send notifications',
                  ),
                  const SizedBox(height: 20),
                  managementCard(
                    icon: Icons.settings,
                    bgColor: const Color.fromARGB(255, 252, 164, 233),
                    title: 'System Settings',
                    subtitle: 'Configure app settings',
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            // Expanded(
            //   child: FutureBuilder(
            //     future: getPostApi(),
            //     builder: (context, snapshot){
            //       if(!snapshot.hasData){
            //         return Text('Loading');
            //       }
            //       else{
            //         return ListView.builder(
            //           itemCount: postList.length,
            //           itemBuilder: (context, index){
            //             return Card(
            //               child: Column(
            //                 children: [
            //                   Text(postList[index].title.toString()),
            //                   Text(postList[index].title.toString()),
            //                 ],
            //               ),
            //             );

            //           });
            //       }
            //     }
                
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget managementCard({
    required IconData icon,
    required Color bgColor,
    required String title,
    required String subtitle,
  }) {
    return Card(
      elevation: 2,
      color: Colors.white,
      child: Row(
        children: [
          const SizedBox(width: 10),
          CircleAvatar(
            radius: 20,
            backgroundColor: bgColor,
            child: Icon(icon),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style:
                        const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text(subtitle),
              ],
            ),
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final IconData icon;
  final String number;
  final String label;
  final Color color;

  const MyCard({
    super.key,
    required this.icon,
    required this.number,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 160,
        child: Card(
          color: Colors.white,
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Column(
              children: [
                Icon(icon, color: color, size: 40),
                const SizedBox(height: 8),
                Text(number,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: color)),
                Text(label,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
