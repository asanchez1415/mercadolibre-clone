import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductScreen'),
      ),
      body: const Center(
        child: Text('ProductScreen'),
      ),
    );
  }
}
