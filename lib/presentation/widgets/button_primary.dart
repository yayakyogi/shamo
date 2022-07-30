import 'package:flutter/material.dart';
import 'package:shamo/presentation/themes/themes.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({
    Key? key,
    required this.onPressed,
    required this.title,
    this.isButtonNext = false,
  }) : super(key: key);

  final Function() onPressed;
  final String title;
  final bool isButtonNext;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: primaryColor,
          padding: const EdgeInsets.all(13),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: isButtonNext
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: fw_500.copyWith(color: primaryTextColor, fontSize: 16),
            ),
            isButtonNext
                ? const Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.white,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
