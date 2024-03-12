// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

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
        child: Stack(
          children: [
            Container(
              width: 385.0,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Colors.blue.shade900,
                    Colors.blue.shade700,
                    Colors.blue.shade200,
                    Colors.blue.shade600,
                    Colors.blue.shade500,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.centerRight,
                )
              ),
            ),
            Positioned(
              height: 200,
              width: 385.0,
              child: Image.asset(
                '../assets/images/okumura.png',
                opacity: const AlwaysStoppedAnimation(.35),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                top: 10,
                left: 10,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Rin Okumura',
                    style: TextStyle(
                      color: Colors.blue.shade100,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            Positioned(
              top: 60,
              left: 15,
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Filho bastardo de Satan, odiado\npor todos em Assiah.',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Positioned(
                bottom: 20,
                left: 30,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.blue.shade100,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'rinokumura@assiah.com',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.blue.shade100,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '+55666666689',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
              ),
            ),
          ],
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