import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
          child: Column(
        children: [
          const Text('Hello World!'),
          const Divider(),
          FloatingActionButton(
              onPressed: () {
              /*  Navigator.of(context).push(
    
        ],
      )),
    );
  }
}