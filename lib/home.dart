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
      body: SingleChildScrollView(
        child: Column(
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
                      SizedBox(width: 16,),
                      MyCard(
                        icon: Icons.people,
                        number: '30',
                        label: 'Faculty',
                        color: Colors.green,
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      MyCard(
                        icon: Icons.menu_book,
                        number: '45',
                        label: 'Courses',
                        color: Colors.orange,
                      ),
                      SizedBox(width: 16,),
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
               alignment: Alignment.centerLeft,            
                child: Text('Management', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),)),
            ),          
        
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              children: [
                Card(
                  elevation: 2,
                  color:Colors.white,
                  child: Row(
                    children: [
                      SizedBox(width: 
                      10,),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: const Color.fromARGB(255, 176, 226, 250),
                        child: Icon(Icons.manage_accounts_rounded)),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('User Management', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            Text('Add, edit or remove users'),                                  
                          ],                   
                        ),
                      ),
                      SizedBox(width: 50),
                      Icon(Icons.arrow_forward_ios,size: 16,),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 2,
                  color:Colors.white,
                  child: Row(
                    children: [
                      SizedBox(width: 
                      10,),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: const Color.fromARGB(255, 97, 218, 151),
                        child: Icon(Icons.book
                        )),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('User Management', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            Text('Add, edit or remove users'),                                  
                          ],                   
                        ),
                      ),
                      SizedBox(width: 50),
                      Icon(Icons.arrow_forward_ios,size: 16,),
                    ],
                  ),
                ), 
                SizedBox(height: 20,),                              
                Card(
                  elevation: 2,
                  color:Colors.white,
                  child: Row(
                    children: [
                      SizedBox(width: 
                      10,),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: const Color.fromARGB(255, 250, 219, 115),
                        child: Icon(Icons.notifications)),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Notification Management', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            Text('Send  notifications'),                                  
                          ],                   
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.arrow_forward_ios,size: 16,),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 2,
                  color:Colors.white,
                  child: Row(
                    children: [
                      SizedBox(width: 
                      10,),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: const Color.fromARGB(255, 252, 164, 233),
                        child: Icon(Icons.settings)),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('System Settings', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            Text('Configure app settings'),                                  
                          ],                   
                        ),
                      ),
                      SizedBox(width: 70),
                      Icon(Icons.arrow_forward_ios,size: 16,),
                    ],
                  ),
                ), 
                SizedBox(height: 30,)                               
              ],
            ),
          )
        
          ],
        ),
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
                SizedBox(height: 8),
                Text(number, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: color)),
                Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
