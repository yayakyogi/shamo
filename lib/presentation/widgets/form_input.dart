import 'package:flutter/material.dart';
import 'package:shamo/presentation/themes/themes.dart';

class FormInput extends StatelessWidget {
  const FormInput({
    Key? key,
    required this.textEditingController,
    required this.title,
    required this.icon,
    required this.isObscureText,
    required this.hintText,
  }) : super(key: key);

  final String title;
  final String hintText;
  final bool isObscureText;
  final String icon;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: fw_500.copyWith(fontSize: 16, color: primaryTextColor),
        ),
        const SizedBox(height: 12),
        Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: bgColor2,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Image.asset(icon, width: 20),
              const SizedBox(width: 16),
              Expanded(
                child: TextField(
                  style: TextStyle(color: primaryTextColor),
                  obscureText: isObscureText,
                  controller: textEditingController,
                  decoration: InputDecoration.collapsed(
                    hintText: hintText,
                    hintStyle: TextStyle(
                      color: secondaryTextColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
