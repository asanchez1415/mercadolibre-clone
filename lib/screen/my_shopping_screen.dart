import 'package:flutter/material.dart';
import 'package:mercadolibre_clone/widgets/components/title_appbar_widget.dart';
import 'package:mercadolibre_clone/widgets/my_shopping/list_shopping_widget.dart';

class MyShoppingScreen extends StatelessWidget {
  const MyShoppingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          TitleAppBar(
            title: 'Mis compras',
          ),
          ListShoppingWidget(),
        ],
      ),
    );
  }
}
