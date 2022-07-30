import 'package:flutter/material.dart';
import 'package:shamo/core/utils/transition_page.dart';
import 'package:shamo/presentation/pages/message_content.dart';
import 'package:shamo/presentation/themes/themes.dart';
import 'package:shamo/presentation/widgets/button_primary.dart';
import 'package:shamo/presentation/widgets/empty_content.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    // widget card message
    Widget cardMessage() {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            EnterPage(page: MessageContent()),
          );
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          padding: const EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: bgColor2,
              ),
            ),
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/icons/ic_image_shop_logo.png',
                width: 54,
                height: 54,
              ),
              const SizedBox(width: 12),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shoe Store',
                      style: fw_400.copyWith(
                        fontSize: 15,
                        color: primaryTextColor,
                      ),
                    ),
                    Text(
                      'Good night, This item is on asjdksdh nsdj',
                      style: fw_400.copyWith(
                        fontSize: 15,
                        color: secondaryTextColor,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Text(
                'Now',
                style: fw_400.copyWith(
                  fontSize: 10,
                  color: secondaryTextColor,
                ),
              ),
            ],
          ),
        ),
      );
    }

    // widget list message
    Widget listMessage() {
      return ListView(
        children: [
          const SizedBox(height: 33),
          cardMessage(),
        ],
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
        child: EmptyContent(
          icon: 'assets/icons/ic_headset.png',
          messageTitle: 'Opss no message yet?',
          messageSubTitle: 'You have never done a transaction',
          onPressed: () {},
        ),
      ),
    );
  }
}
