import 'package:flutter/material.dart';
import 'package:shamo/presentation/themes/themes.dart';

class CardArrival extends StatelessWidget {
  const CardArrival({
    Key? key,
    required this.type,
    required this.title,
    required this.price,
    required this.image,
    required this.onPressed,
  }) : super(key: key);

  final Function() onPressed;
  final String title;
  final String type;
  final double price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(image, width: 120, height: 120),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type,
                  style: fw_400.copyWith(
                    fontSize: 12,
                    color: secondaryTextColor,
                  ),
                ),
                Container(
                  width: 151,
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  child: Text(
                    title,
                    style: fw_600.copyWith(
                      fontSize: 18,
                      color: primaryTextColor,
                    ),
                    overflow: TextOverflow.clip,
                  ),
                ),
                Text(
                  '\$ $price',
                  style: fw_500.copyWith(color: priceColor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
