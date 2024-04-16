import 'package:flutter/material.dart';
import 'package:mercadolibre_clone/widgets/components/title_appbar_widget.dart';
import 'package:mercadolibre_clone/widgets/favorites/list_favorites_widget.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          TitleAppBar(
            title: 'Favoritos',
          ),
          ListFavoritesWidget(),
        ],
      ),
    );
  }
}
