import 'package:flutter/material.dart';
import 'package:mercadolibre_clone/constants/constants.dart';

class RecommendedWidget extends StatelessWidget {
  const RecommendedWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      width: sizeScreen(context).width,
      height: 230,
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            CardProductHome(
              textFirst: 'Visto recientemente',
              urlImage:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Festival_automobile_international_2014_-_Alfa_Romeo_4C_-_033.jpg/1200px-Festival_automobile_international_2014_-_Alfa_Romeo_4C_-_033.jpg',
              title: 'Alfa romeo 4C nuevo',
              price: '\$ 80.000.000',
            ),
            CardProductHome(
              textFirst: 'Llévate tu favorito',
              urlImage:
                  'https://i.pinimg.com/originals/9b/25/e7/9b25e7fa1215bb510cba9cbcf655c499.jpg',
              title: 'Camaro 1968',
              price: '\$ 50.000.000',
            ),
            CardProductHome(
              textFirst: 'Visto recientemente',
              urlImage:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Festival_automobile_international_2014_-_Alfa_Romeo_4C_-_033.jpg/1200px-Festival_automobile_international_2014_-_Alfa_Romeo_4C_-_033.jpg',
              title: 'Alfa romeo 4C nuevo',
              price: '\$ 80.000.000',
            ),
          ],
        ),
      ),
    );
  }
}

class CardProductHome extends StatelessWidget {
  final String textFirst;
  final String title;
  final String urlImage;
  final String price;

  const CardProductHome({
    super.key,
    required this.price,
    required this.textFirst,
    required this.title,
    required this.urlImage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'product'),
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        child: Container(
          width: 170,
          height: 210,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              alignment: Alignment.centerLeft,
              child: Text(
                textFirst,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: ClipRRect(
                child: Image.network(
                  urlImage,
                  width: 120,
                  height: 80,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: const TextStyle(color: mlbUnSelectedGrey),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              alignment: Alignment.centerLeft,
              child: Text(
                price,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
