import 'package:flutter/material.dart';
import 'package:shamo/presentation/themes/themes.dart';

class MessageContent extends StatefulWidget {
  const MessageContent({Key? key}) : super(key: key);

  @override
  State<MessageContent> createState() => _MessageContentState();
}

class _MessageContentState extends State<MessageContent> {
  final TextEditingController messageController = TextEditingController();
  bool isAnySendProduct = true;

  @override
  Widget build(BuildContext context) {
    // appbar widget
    PreferredSizeWidget appBar() {
      return AppBar(
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
      );
    }

    // widget untuk menampilkan product yg dipilih
    Widget sendProduct() {
      return Container(
        width: 225,
        height: 74,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: bgColor4,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(
                'assets/images/image_shoes.png',
                width: 54,
              ),
            ),
            const SizedBox(width: 10),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Court Vision',
                    style: fw_400.copyWith(
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '\$57,15',
                    style: fw_500.copyWith(
                      color: priceColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                setState(() {
                  isAnySendProduct = !isAnySendProduct;
                });
              },
              child: Icon(
                Icons.cancel,
                color: primaryColor,
              ),
            )
          ],
        ),
      );
    }

    // widget textfield untuk memasukkan pesan
    Widget formMessage({required bool isSendProduct}) {
      return Container(
        padding: const EdgeInsets.all(15),
        height: isSendProduct ? 175 : 80,
        decoration: BoxDecoration(
          color: bgColor3,
          border: Border.all(
            width: 0,
            color: bgColor3,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            isSendProduct ? sendProduct() : Container(),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: messageController,
                    style: fw_400.copyWith(color: primaryTextColor),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: bgColor2,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      hintText: 'Typle Message..',
                      hintStyle: fw_400.copyWith(color: secondaryTextColor),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'assets/icons/ic_send_message.png',
                    width: 45,
                    height: 45,
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    // style container untuk pesan yg kita kirim
    Decoration sendMessageDecoration({required bool isSendMessage}) {
      return BoxDecoration(
        color: isSendMessage ? bgColor4 : bgColor1,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(isSendMessage ? 12 : 0),
          topRight: Radius.circular(isSendMessage ? 0 : 12),
          bottomRight: const Radius.circular(12),
          bottomLeft: const Radius.circular(12),
        ),
      );
    }

    // widget card sepatu yg dipilih setelah di chat
    Widget cardProductDetail() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 250,
            height: 155,
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(bottom: 12),
            decoration: sendMessageDecoration(isSendMessage: true),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // image,title,price
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset(
                        'assets/images/image_shoes.png',
                        width: 70,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Court Vision 2.0 Shoes',
                            style: fw_400.copyWith(color: Colors.white),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '\$ 57,15',
                            style: fw_500.copyWith(
                              color: priceColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: bgColor4,
                        padding: EdgeInsets.zero,
                        fixedSize: const Size(109, 41),
                        side: BorderSide(color: primaryColor),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Add to Cart',
                        style: fw_400.copyWith(
                          color: primaryColor,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        padding: EdgeInsets.zero,
                        fixedSize: const Size(109, 41),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Buy Now',
                        style: fw_400.copyWith(
                          color: bgColor1,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      );
    }

    // widget untuk menampilkan pesan yg kita kirim
    Widget sendMessage({
      required bool isSendMessage,
      required String message,
    }) {
      return Row(
        mainAxisAlignment:
            isSendMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              margin: EdgeInsets.only(
                top: isSendMessage ? 0 : 20,
                bottom: isSendMessage ? 12 : 20,
                left: isSendMessage ? 20 : 0,
                right: isSendMessage ? 0 : 20,
              ),
              decoration: sendMessageDecoration(isSendMessage: isSendMessage),
              child: Text(
                message,
                style: fw_400.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: appBar(),
      bottomSheet: formMessage(isSendProduct: isAnySendProduct),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            const SizedBox(height: 30),
            cardProductDetail(),
            sendMessage(
              isSendMessage: true,
              message:
                  'Hi, This item is still available? asdsadas aksjdhakj asdjhjkh',
            ),
            sendMessage(
              isSendMessage: false,
              message: 'Hi, This item is still available?',
            ),
            sendMessage(
              isSendMessage: true,
              message: 'Hi',
            ),
            SizedBox(height: isAnySendProduct ? 170 : 70),
          ],
        ),
      ),
    );
  }
}
