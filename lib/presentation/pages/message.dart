import 'package:flutter/material.dart';
import 'package:shamo/presentation/themes/themes.dart';
import 'package:shamo/presentation/widgets/button_primary.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    // widget jika pesan kosong
    Widget nullMessage() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/ic_headset.png',
              width: 80,
            ),
            const SizedBox(height: 20),
            Text(
              'Opss no message yet?',
              style: fw_500.copyWith(
                fontSize: 16,
                color: primaryTextColor,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'You have never done a transaction',
              style: fw_500.copyWith(
                color: secondaryTextColor,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 152,
              child: ButtonPrimary(onPressed: () {}, title: 'Explore Store'),
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 87,
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text(
          'Message Support',
          style: fw_600.copyWith(
            fontSize: 18,
            color: primaryTextColor,
          ),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: nullMessage(),
      ),
    );
  }
}
