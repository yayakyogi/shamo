import 'package:flutter/material.dart';
import 'package:shamo/presentation/themes/themes.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({
    Key? key,
    required this.title,
    required this.image,
    required this.type,
    required this.price,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final String image;
  final String type;
  final double price;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 215,
        height: 278,
        margin: const EdgeInsets.only(right: 30),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Image.asset(
              image,
              width: 215,
              height: 150,
              fit: BoxFit.cover,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    type,
                    style: fw_400.copyWith(
                      fontSize: 12,
                      color: secondaryTextColor,
                    ),
                  ),
                  Text(
                    title,
                    style: fw_600.copyWith(
                      fontSize: 18,
                      color: bgColor1,
                    ),
                  ),
                  Text(
                    '\$$price',
                    style: fw_500.copyWith(color: priceColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
