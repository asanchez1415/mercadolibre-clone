import 'package:flutter/material.dart';
import 'package:mercadolibre_clone/constants/constants.dart';

class LocationRowWidget extends StatelessWidget {
  const LocationRowWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      color: mlbYellow,
      height: 30,
      width: sizeScreen(context).width,
      child: const Row(children: [
        Icon(
          Icons.place_outlined,
          size: 18,
          color: Colors.black,
        ),
        Text(
          'Santiago',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        Icon(
          Icons.arrow_forward_ios_rounded,
          size: 16,
          color: Colors.black,
        ),
      ]),
    );
  }
}
