import 'package:flutter/material.dart';
import 'package:shamo/presentation/themes/themes.dart';

class MessageContent extends StatefulWidget {
  const MessageContent({Key? key}) : super(key: key);

  @override
  State<MessageContent> createState() => _MessageContentState();
}

class _MessageContentState extends State<MessageContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor1,
        toolbarHeight: 87,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const SizedBox(width: 12),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 15),
            Image.asset(
              'assets/icons/ic_image_shop_logo_online.png',
              width: 50,
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shoes Store',
                  style: fw_500.copyWith(
                    fontSize: 14,
                    color: primaryTextColor,
                  ),
                ),
                Text(
                  'Online',
                  style: fw_300.copyWith(
                    fontSize: 14,
                    color: secondaryTextColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
