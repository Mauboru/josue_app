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
            icon: Icon(Icons.star),
            onPressed: () {},
            color: Colors.black,
          ),
          IconButton(
            icon: Icon(Icons.refresh),
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
      body: const Center(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Adicione a imagem aqui
              ListTile(
                title: Text('Informações'),
                subtitle: Text('Outras informações aqui...'),
              ),
            ],
          ),
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