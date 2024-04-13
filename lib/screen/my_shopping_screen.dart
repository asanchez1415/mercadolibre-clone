import 'package:flutter/material.dart';

class MyShoppingScreen extends StatelessWidget {
  const MyShoppingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShoppingScreen'),
      ),
      body: const Center(
        child: Text('MyShoppingScreen'),
      ),
    );
  }
}
