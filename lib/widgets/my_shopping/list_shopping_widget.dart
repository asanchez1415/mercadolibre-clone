import 'package:flutter/material.dart';
import 'package:mercadolibre_clone/constants/constants.dart';

class ListShoppingWidget extends StatelessWidget {
  const ListShoppingWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          FavoriteCard(
            urlImage:
                'https://http2.mlstatic.com/D_NQ_NP_2X_608698-MLC70503747695_072023-F.webp',
            state: 'Entregado',
            firstText: '19 de diciembre de 2023',
            secondText: 'Llegó el 20 de diciembre',
          ),
          FavoriteCard(
            urlImage:
                'https://http2.mlstatic.com/D_NQ_NP_2X_772935-MLU72566135718_112023-F.webp',
            state: 'Entregado',
            firstText: '10 de diciembre de 2023',
            secondText: 'Llegó el 10 de diciembre',
          ),
          FavoriteCard(
            urlImage:
                'https://http2.mlstatic.com/D_NQ_NP_2X_728791-MLC71586639882_092023-F.webp',
            state: 'Entregado',
            firstText: '20 de octubre de 2023',
            secondText: 'Llegó el 20 de octubre',
          ),
          FavoriteCard(
            urlImage:
                'https://http2.mlstatic.com/D_NQ_NP_2X_721722-MLC70937251745_082023-F.webp',
            state: 'Entregado',
            firstText: '05 de julio de 2023',
            secondText: 'Llegó el 05 de julio',
          ),
          FavoriteCard(
            urlImage:
                'https://http2.mlstatic.com/D_NQ_NP_2X_758029-MLC73992219203_012024-F.webp',
            state: 'Entregado',
            firstText: '25 de junio de 2023',
            secondText: 'Llegó el 25 de junio',
          ),
        ],
      ),
    );
  }
}

class FavoriteCard extends StatelessWidget {
  final String urlImage;
  final String state;
  final String firstText;
  final String secondText;

  const FavoriteCard({
    super.key,
    required this.urlImage,
    required this.state,
    required this.firstText,
    required this.secondText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          Container(
            width: sizeScreen(context).width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              border: Border.all(width: 0.1),
            ),
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  firstText,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Volver a comprar',
                  style: TextStyle(
                      color: mlbSelectedBlue,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Container(
            width: sizeScreen(context).width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              border: Border.all(width: 0.1),
            ),
            height: 110,
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 222, 222, 222),
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: ClipRRect(
                    child: Image.network(
                      urlImage,
                      width: 70,
                      height: 70,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        state,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(33, 161, 89, 1),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        secondText,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
