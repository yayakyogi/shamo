import 'package:flutter/material.dart';
import 'package:shamo/presentation/themes/themes.dart';

class ButtonCategory extends StatelessWidget {
  const ButtonCategory({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.isActive,
  }) : super(key: key);

  final String title;
  final Function() onPressed;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: isActive ? primaryColor : bgColor1,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          side: BorderSide(
            width: 1,
            color: isActive ? primaryColor : bgColor2,
          ),
        ),
        child: Text(
          title,
          style: fw_500.copyWith(fontSize: 13, color: primaryTextColor),
        ),
      ),
    );
  }
}
