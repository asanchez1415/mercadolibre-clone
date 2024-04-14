import 'package:flutter/material.dart';
import 'package:mercadolibre_clone/constants/colors.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            mlbYellow,
            mlbBackground,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      width: sizeScreen.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('lib/assets/images/banner_home.jpg')),
      ),
    );
  }
}