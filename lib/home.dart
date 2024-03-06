import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("AULA DISPOSITIVOS MOVEIS"),
        actions: [
          IconButton(
            icon: const Icon(Icons.star),
            onPressed: () {},
            color: Colors.black,
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {},
            color: Colors.black,
          ),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: const Text('My Account'),
                onTap: () {},
              ),
              PopupMenuItem(
                child: const Text('Settings'),
                onTap: () {},
              ),
              PopupMenuItem(
                child: const Text('Logout'),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Rin Okumura',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Filho bastardo de Satan, odiado por todos em Assiah.'),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/okumura.jpg',
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
              ListTile(
                title: Text('info@email.com'),
                leading: Icon(Icons.email),
              ),
            ],
          ),
          color: Colors.blue,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
          ),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomAppBar(
        color: Colors.blue,
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}