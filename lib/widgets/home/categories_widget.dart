import 'package:flutter/material.dart';
import 'package:mercadolibre_clone/constants/styles.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        width: sizeScreen(context).width,
        child: const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategorieWidget(
                urlImage:
                    'https://http2.mlstatic.com/storage/homes-korriban/assets/icons/xxhdpi/home_car-front-new-category.webp',
                label: 'Automóviles',
              ),
              CategorieWidget(
                urlImage:
                    'https://http2.mlstatic.com/storage/homes-korriban/assets/icons/xxhdpi/home_mobile-button-category.webp',
                label: 'Telefonía',
              ),
              CategorieWidget(
                urlImage:
                    'https://http2.mlstatic.com/storage/homes-korriban/assets/icons/xxhdpi/home_tshirt-53-category.webp',
                label: 'Vestuario',
              ),
              CategorieWidget(
                urlImage:
                    'https://http2.mlstatic.com/storage/homes-korriban/assets/icons/xxhdpi/home_armchair_blue-category.webp',
                label: 'Hogar',
              ),
              CategorieWidget(
                urlImage:
                    'https://http2.mlstatic.com/storage/homes-korriban/assets/icons/xxhdpi/home_building-category.webp',
                label: 'Inmuebles',
              ),
            ],
          ),
        ));
  }
}

class CategorieWidget extends StatelessWidget {
  final String urlImage;
  final String label;

  const CategorieWidget(
      {super.key, required this.urlImage, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(200),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.15),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(8),
            child: Image.network(urlImage),
          )),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: const TextStyle(
                fontSize: 10, color: Color.fromRGBO(115, 115, 115, 1)),
          ),
        )
      ],
    );
  }
}
