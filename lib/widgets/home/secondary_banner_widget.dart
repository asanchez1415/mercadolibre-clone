import 'package:flutter/material.dart';
import 'package:mercadolibre_clone/constants/styles.dart';

class SecondaryBannerWidget extends StatelessWidget {
  const SecondaryBannerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    const double paddingHorizontal = 18;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: paddingHorizontal),
      width: sizeScreen(context).width,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          children: [
            Container(
                width:
                    (sizeScreen(context).width - paddingHorizontal * 2) * 0.55,
                height: 100,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(226, 224, 225, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    )),
                child: Container(
                  padding: const EdgeInsets.only(left: 35),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'APROVECHA',
                        style: TextStyle(fontSize: 10, height: 2.5),
                      ),
                      Text(
                        'ENVÍOS GRATIS',
                        style:
                            TextStyle(fontWeight: FontWeight.w600, height: 1),
                      ),
                      Text(
                        'SOBRE \$19.990',
                        style:
                            TextStyle(fontWeight: FontWeight.w600, height: 1),
                      ),
                      Text(
                        'COMPRAR',
                        style: TextStyle(fontSize: 10, height: 2.5),
                      ),
                    ],
                  ),
                )),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              child: Image.asset(
                'lib/assets/images/banner2.jpg',
                width:
                    (sizeScreen(context).width - paddingHorizontal * 2) * 0.45,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
