import 'package:flutter/material.dart';
import 'package:mercadolibre_clone/constants/constants.dart';

class TitleAppBar extends StatelessWidget {
  final String title;

  const TitleAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      color: mlbYellow,
      height: 38,
      width: sizeScreen(context).width,
      child: Center(
        child: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
      ),
    );
  }
}
