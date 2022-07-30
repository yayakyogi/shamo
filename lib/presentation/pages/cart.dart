import 'package:flutter/material.dart';
import 'package:shamo/presentation/themes/themes.dart';
import 'package:shamo/presentation/widgets/button_primary.dart';
import 'package:shamo/presentation/widgets/empty_content.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    // widget appbar
    PreferredSizeWidget appBar() {
      return AppBar(
        toolbarHeight: 87,
        backgroundColor: bgColor1,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                ),
              ),
              Text(
                'Your Cart',
                style: fw_600.copyWith(
                  fontSize: 18,
                  color: primaryTextColor,
                ),
              ),
              const SizedBox(width: 30),
            ],
          ),
        ),
      );
    }

    // widget empty content
    Widget emptyContent() {
      return EmptyContent(
        icon: 'assets/icons/ic_bracket.png',
        messageTitle: 'Opss! Your Cart is Empty',
        messageSubTitle: 'Let\'s find your favorite shoes',
        onPressed: () {},
      );
    }

    // widget untuk menampilkan cart
    Widget cardCart() {
      return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: bgColor2,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // content shoes
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // image shoes
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
                const SizedBox(width: 12),
                // shoes description
                Flexible(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Terrex Urban Low',
                        style: fw_600.copyWith(color: Colors.white),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '\$143,98',
                        style: fw_500.copyWith(
                          color: priceColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                // button plus & minus
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/icons/ic_button_add.png',
                        width: 20,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        '2',
                        style: fw_500.copyWith(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/icons/ic_button_min.png',
                        width: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            // button icon to remove cart
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Image.asset(
                    'assets/icons/ic_icon_remove.png',
                    width: 14,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'Remove',
                    style: fw_400.copyWith(color: alertColor),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    // widget untuk menampilkan subtotal dan button next
    Widget bottomMenu() {
      return Container(
        height: 142,
        color: bgColor3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // content subtotal
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: fw_400.copyWith(color: primaryTextColor),
                  ),
                  Text(
                    '\$287,96',
                    style: fw_500.copyWith(
                      color: priceColor,
                    ),
                  )
                ],
              ),
            ),
            // line
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              width: MediaQuery.of(context).size.width,
              height: 1,
              color: bgColor2,
            ),
            // button next to checkout
            Padding(
              padding: const EdgeInsets.only(
                right: 30,
                left: 30,
                bottom: 30,
              ),
              child: ButtonPrimary(
                isButtonNext: true,
                onPressed: () {},
                title: 'Continue to Checkout',
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: appBar(),
      bottomSheet: bottomMenu(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: [
              const SizedBox(height: 30),
              cardCart(),
            ],
          ),
        ),
      ),
    );
  }
}
