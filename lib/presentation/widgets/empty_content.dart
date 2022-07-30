import 'package:flutter/material.dart';
import 'package:shamo/presentation/themes/themes.dart';
import 'package:shamo/presentation/widgets/button_primary.dart';

class EmptyContent extends StatelessWidget {
  const EmptyContent({
    Key? key,
    required this.icon,
    required this.messageTitle,
    required this.messageSubTitle,
    required this.onPressed,
  }) : super(key: key);

  final String icon;
  final String messageTitle;
  final String messageSubTitle;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            width: 80,
          ),
          const SizedBox(height: 20),
          Text(
            messageTitle,
            style: fw_500.copyWith(
              fontSize: 16,
              color: primaryTextColor,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            messageSubTitle,
            style: fw_500.copyWith(
              color: secondaryTextColor,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 152,
            child: ButtonPrimary(
              onPressed: onPressed,
              title: 'Explore Store',
            ),
          )
        ],
      ),
    );
  }
}
