import 'package:flutter/material.dart';
import 'package:shamo/presentation/themes/themes.dart';
import 'package:shamo/presentation/widgets/button_category.dart';
import 'package:shamo/presentation/widgets/card_arrival.dart';
import 'package:shamo/presentation/widgets/card_product.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indexCategory = 0;
  int _indexBottomNav = 0;
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
              isActive: _indexCategory == 0 ? true : false,
              title: 'All Shoes',
              onPressed: () {
                setState(() {
                  _indexCategory = 0;
                });
              },
            ),
            ButtonCategory(
              isActive: _indexCategory == 1 ? true : false,
              title: 'Running',
              onPressed: () {
                setState(() {
                  _indexCategory = 1;
                });
              },
            ),
            ButtonCategory(
              isActive: _indexCategory == 2 ? true : false,
              title: 'Training',
              onPressed: () {
                setState(() {
                  _indexCategory = 2;
                });
              },
            ),
            ButtonCategory(
              isActive: _indexCategory == 3 ? true : false,
              title: 'Basketball',
              onPressed: () {
                setState(() {
                  _indexCategory = 3;
                });
              },
            ),
            ButtonCategory(
              isActive: _indexCategory == 4 ? true : false,
              title: 'Hiking',
              onPressed: () {
                setState(() {
                  _indexCategory = 4;
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

    // widget new arrival
    Widget newArival() {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 14),
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'New Arrivals',
                style: fw_600.copyWith(fontSize: 22, color: primaryTextColor),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  CardArrival(
                    type: 'Football',
                    title: 'Perdator 20.3 Firm Ground',
                    price: 68.47,
                    image: 'assets/images/image_shoes3.png',
                    onPressed: () {},
                  ),
                  CardArrival(
                    type: 'Running',
                    title: 'Ultra 4D 5 Shoesd',
                    price: 286.73,
                    image: 'assets/images/image_shoes4.png',
                    onPressed: () {},
                  ),
                  CardArrival(
                    type: 'Basketball',
                    title: 'Court Vision 2.0 Shoes',
                    price: 57.15,
                    image: 'assets/images/image_shoes5.png',
                    onPressed: () {},
                  ),
                  CardArrival(
                    type: 'Training',
                    title: 'LEGO® SPORT SHOES',
                    price: 92.72,
                    image: 'assets/images/image_shoes6.png',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    // widget icon button
    Widget iconButton({int index = 0, String icon = ''}) {
      return InkWell(
        onTap: () {
          setState(() {
            _indexBottomNav = index;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
          child: Image.asset(
            icon,
            width: 20,
            height: 20,
            color: index == _indexBottomNav ? secondaryColor : Colors.grey,
          ),
        ),
      );
    }

    // bottom app bar
    Widget bottomNav() {
      return BottomAppBar(
        color: bgColor1,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        clipBehavior: Clip.antiAlias,
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: bgColor2,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              iconButton(index: 0, icon: 'assets/icons/ic_home.png'),
              iconButton(index: 1, icon: 'assets/icons/ic_message.png'),
              const SizedBox(),
              iconButton(index: 2, icon: 'assets/icons/ic_like.png'),
              iconButton(index: 3, icon: 'assets/icons/ic_profile.png'),
            ],
          ),
        ),
      );
    }

    // widget floatingActionButton
    Widget floatMenu() {
      return Container(
        width: 60,
        height: 60,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: secondaryColor,
        ),
        child: Image.asset('assets/icons/ic_cart.png'),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            listMenuCategory(),
            listPopularProducts(),
            newArival(),
          ],
        ),
      ),
      floatingActionButton: floatMenu(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomNav(),
    );
  }
}
