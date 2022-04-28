import 'package:coffee_ui/theme.dart';
import 'package:coffee_ui/widgets/category_item.dart';
import 'package:coffee_ui/widgets/product_card.dart';
import 'package:coffee_ui/widgets/special_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget header() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            splashColor: backgroundColor1,
            onTap: () {},
            child: Ink.image(
              height: 40,
              width: 40,
              image: const AssetImage('assets/images/menu.png'),
            ),
          ),
          Material(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: InkWell(
              splashColor: backgroundColor1,
              onTap: () {},
              child: Ink.image(
                height: 40,
                width: 40,
                image: AssetImage('assets/images/user.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget searchBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Find the best\ncoffee for you',
            style: whiteTextStyle.copyWith(
                fontSize: 30, fontWeight: semiBold, height: 1.2),
          ),
          const SizedBox(height: 20),
          TextField(
            cursorColor: greyColor,
            style: whiteTextStyle,
            decoration: InputDecoration(
              filled: true,
              fillColor: backgroundColor2,
              hintText: 'Find Your Coffee ...',
              hintStyle: greyTextStyle,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Image.asset(
                  'assets/images/search_icon.png',
                  width: 10,
                  height: 10,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: backgroundColor2),
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: backgroundColor2),
                  borderRadius: BorderRadius.circular(defaultRadius)),
              // border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }

  Widget categories() {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: defaultMargin),
            Container(
              margin: EdgeInsets.only(right: defaultMargin),
              child: Column(
                children: [
                  Text(
                    'Cappuccino',
                    style: brownTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    width: 10,
                    height: 10,
                    // padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: brownColor),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: defaultMargin),
              child: Column(
                children: [
                  Text(
                    'Espresso',
                    style: darkGreyTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    width: 10,
                    height: 10,
                    // padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: transparentColor),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: defaultMargin),
              child: Column(
                children: [
                  Text(
                    'Latte',
                    style: darkGreyTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    width: 10,
                    height: 10,
                    // padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: transparentColor),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: Column(
                children: [
                  Text(
                    'Flate White',
                    style: darkGreyTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    width: 10,
                    height: 10,
                    // padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: transparentColor),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: Column(
                children: [
                  Text(
                    'Black Coffee',
                    style: darkGreyTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    width: 10,
                    height: 10,
                    // padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: transparentColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget products() {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: defaultMargin),
            ProductCard(
                title: 'Cappucino',
                text: 'With Oat Milk',
                price: 4.20,
                imgUrl: 'assets/images/comilk.jpg',
                rate: 4.8),
            ProductCard(
                title: 'Cappucino',
                text: 'With Chocolate',
                price: 3.15,
                imgUrl: 'assets/images/choco1.jpg',
                rate: 4.2),
            ProductCard(
                title: 'Cappuccino',
                text: 'With Chocolate',
                price: 3.15,
                imgUrl: 'assets/images/latte.jpg',
                rate: 4.2),
          ],
        ),
      ),
    );
  }

  Widget specialTitle() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(
        'Special for you',
        style: whiteTextStyle.copyWith(fontSize: 20),
      ),
    );
  }

  Widget specials() {
    return Container(
      margin: const EdgeInsets.only(top: 14),
      child: Column(
        children: [
          SpecialTile(
              imgUrl: 'assets/images/cappucino.jpg',
              text: '5 Coffee Beans Yous Must Try!'),
          SpecialTile(
              imgUrl: 'assets/images/milk.jpg',
              text: 'Cold coffee with fresh milk, You Must Try!')
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      header(),
      searchBar(),
      categories(),
      products(),
      specialTitle(),
      specials(),
    ]);
  }
}
