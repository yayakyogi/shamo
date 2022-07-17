import 'package:flutter/material.dart';
import 'package:shamo/presentation/themes/themes.dart';
import 'package:shamo/presentation/widgets/button_category.dart';
import 'package:shamo/presentation/widgets/card_product.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    // header
    Widget header() {
      return Container(
        margin: EdgeInsets.all(defaultMargin),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hallo, Alex',
                  style: fw_600.copyWith(
                    fontSize: 24,
                    color: primaryTextColor,
                  ),
                ),
                Text(
                  '@alexkeinn',
                  style: fw_400.copyWith(
                    fontSize: 16,
                    color: secondaryTextColor,
                  ),
                )
              ],
            ),
            const Spacer(),
            ClipRRect(
              borderRadius: BorderRadius.circular(27),
              child: Image.asset(
                'assets/icons/ic_photo_profile.png',
                width: 54,
                height: 54,
              ),
            )
          ],
        ),
      );
    }

    // widget list menu category
    Widget listMenuCategory() {
      return Container(
        height: 40,
        margin: const EdgeInsets.only(bottom: 30),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            const SizedBox(width: 30),
            ButtonCategory(
              isActive: _index == 0 ? true : false,
              title: 'All Shoes',
              onPressed: () {
                setState(() {
                  _index = 0;
                });
              },
            ),
            ButtonCategory(
              isActive: _index == 1 ? true : false,
              title: 'Running',
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
            ),
            ButtonCategory(
              isActive: _index == 2 ? true : false,
              title: 'Training',
              onPressed: () {
                setState(() {
                  _index = 2;
                });
              },
            ),
            ButtonCategory(
              isActive: _index == 3 ? true : false,
              title: 'Basketball',
              onPressed: () {
                setState(() {
                  _index = 3;
                });
              },
            ),
            ButtonCategory(
              isActive: _index == 4 ? true : false,
              title: 'Hiking',
              onPressed: () {
                setState(() {
                  _index = 4;
                });
              },
            ),
            const SizedBox(width: 30),
          ],
        ),
      );
    }

    // widget list popular products
    Widget listPopularProducts() {
      return Container(
        height: 325,
        margin: const EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 14),
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Popular Products',
                style: fw_600.copyWith(fontSize: 22, color: primaryTextColor),
              ),
            ),
            SizedBox(
              height: 278,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 30),
                  CardProduct(
                    title: 'COURT VISION 2.0',
                    type: 'Hiking',
                    image: 'assets/images/image_shoes.png',
                    price: 58.67,
                    onPressed: () {},
                  ),
                  CardProduct(
                    title: 'TERREX URBAN LOW',
                    type: 'Hiking',
                    image: 'assets/images/image_shoes2.png',
                    price: 143.98,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            listMenuCategory(),
            listPopularProducts(),
          ],
        ),
      ),
    );
  }
}
