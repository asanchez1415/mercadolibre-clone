import 'package:flutter/material.dart';
import 'package:mercadolibre_clone/constants/colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mlbYellow,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 350,
            height: 35,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextField(
              onChanged: (value) => {},
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(9.0),
                prefixIcon: Align(
                  widthFactor: 1.0,
                  heightFactor: 1.0,
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
                prefixIconConstraints: BoxConstraints(
                  maxHeight: 16,
                  minWidth: 25,
                ),
                border: InputBorder.none,
                hintText: 'Buscar en Mercado Libre',
                hintStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          const Icon(
            Icons.shopping_cart_outlined,
            size: 28,
          ),
        ],
      ),
    );
  }
}
