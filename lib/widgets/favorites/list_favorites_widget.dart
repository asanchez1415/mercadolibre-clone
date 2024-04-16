import 'package:flutter/material.dart';
import 'package:mercadolibre_clone/constants/colors.dart';
import 'package:mercadolibre_clone/constants/styles.dart';

class ListFavoritesWidget extends StatelessWidget {
  const ListFavoritesWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        FavoriteCard(
          urlImage:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Festival_automobile_international_2014_-_Alfa_Romeo_4C_-_033.jpg/1200px-Festival_automobile_international_2014_-_Alfa_Romeo_4C_-_033.jpg',
          name: 'Alfa Romeo 4C',
          price: '\$ 80.000.000',
          specs: '2024 | 0 km',
        ),
        FavoriteCard(
          urlImage: 'https://www.clarin.com/2017/07/03/B1EUs1d4W_1200x0.jpg',
          name: 'Renault Twingo',
          price: '\$ 2.000.000',
          specs: '2002 | 100.000 km',
        ),
        FavoriteCard(
          urlImage:
              'https://i.pinimg.com/originals/9b/25/e7/9b25e7fa1215bb510cba9cbcf655c499.jpg',
          name: 'Camaro 1968',
          price: '\$ 50.000.000',
          specs: '1968 | 200.000 km',
        ),
        FavoriteCard(
          urlImage:
              'https://imgcf.ecn.cl/600/f9/f9fa5bbda14a4fbca7263f12e5490dcb13497a15.bin.jpg',
          name: 'Nissan v16 nunca taxi',
          price: '\$ 2.000.000',
          specs: '2009 | 121.000 km',
        ),
        FavoriteCard(
          urlImage:
              'https://autosdeprimera.com/wp-content/uploads/2023/12/Tesla-Cybertruck-3.jpg',
          name: 'Tesla Cybertruck',
          price: '\$ 100.000.000',
          specs: '2024 | 0 km',
        ),
      ],
    );
  }
}

class FavoriteCard extends StatelessWidget {
  final String urlImage;
  final String name;
  final String price;
  final String specs;

  const FavoriteCard({
    super.key,
    required this.urlImage,
    required this.name,
    required this.price,
    required this.specs,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeScreen(context).width,
      color: Colors.white,
      height: 200,
      padding: const EdgeInsets.all(12),
      child: Row(children: [
        ClipRRect(
          child: Image.network(
            urlImage,
            width: 180,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(fontSize: 18),
              ),
              Text(
                price,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0,
                ),
              ),
              Text(
                specs,
                style: const TextStyle(fontSize: 12),
              ),
              const Text(
                'Eliminar',
                style: TextStyle(
                    color: mlbSelectedBlue, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
