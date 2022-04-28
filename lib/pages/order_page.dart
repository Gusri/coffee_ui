import 'dart:ui';

import 'package:coffee_ui/theme.dart';
import 'package:coffee_ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  bool favorite = false;
  int index = 0;

  Widget header() {
    final Image select = Image.asset(
      'assets/images/brownHeart_icon.png',
      width: 23,
      height: 23,
    );
    final Image disSelect = Image.asset(
      'assets/images/heart_icon.png',
      width: 23,
      height: 23,
    );

    Widget topButton() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          top: 40,
          right: defaultMargin,
        ),
        // width: 400,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomButton(
              color: backgroundColor2,
              onPressed: () => Navigator.pop(context),
              child: Icon(
                Icons.chevron_left,
                size: 32,
                color: greyColor,
              ),
              minimumSize: Size.zero,
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
              border: BorderRadius.circular(15),
            ),
            CustomButton(
              color: backgroundColor2,
              onPressed: () => setState(() => favorite = !favorite),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: favorite ? select : disSelect,
              ),
              minimumSize: Size.zero,
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 4,
              ),
              border: BorderRadius.circular(15),
            ),
          ],
        ),
      );
    }

    Widget backgroundImage() {
      return ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        child: Image.asset(
          'assets/images/comilk.jpg',
          width: displayWidth(context),
          height: displayHeight(context) * 0.65,
          fit: BoxFit.cover,
        ),
      );
    }

    Widget boxGlass() {
      Widget leftRow() {
        return Container(
          margin: const EdgeInsets.only(top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cappuccino',
                style: whiteTextStyle.copyWith(
                  fontSize: 22,
                  fontWeight: medium,
                ),
              ),
              Text(
                'With Oat Milk',
                style: greyTextStyle.copyWith(fontSize: 16),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Image.asset(
                    'assets/images/star_icon.png',
                    width: 25,
                    height: 25,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '4.5',
                    style: whiteTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                  const SizedBox(width: 6),
                  Text('(6.989)', style: whiteTextStyle),
                ],
              ),
            ],
          ),
        );
      }

      Widget rightRow() {
        Widget box({
          required double width,
          required double height,
          final Widget? child,
        }) {
          return Container(
            width: width,
            height: height,
            margin: const EdgeInsets.only(left: 20),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: backgroundColor1,
              borderRadius: BorderRadius.circular(15),
            ),
            child: child,
          );
        }

        return Column(
          children: [
            Row(
              children: [
                box(
                  width: 70,
                  height: 80,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/coffee.png',
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Coffee',
                        style: greyTextStyle,
                      ),
                    ],
                  ),
                ),
                box(
                  width: 70,
                  height: 80,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/water.png',
                        width: 20,
                        height: 30,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Coffee',
                        style: greyTextStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            box(
              width: 160,
              height: 50,
              child: Center(
                child: Text(
                  'Medium Roasted',
                  style: greyTextStyle,
                  // textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        );
      }

      return Positioned(
        bottom: 0,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10,
              sigmaY: 10,
            ),
            child: Container(
              width: displayWidth(context),
              height: displayHeight(context) * 0.25,
              color: backgroundColor1.withOpacity(0.6),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: defaultMargin, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [leftRow(), rightRow()],
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Stack(
      children: [
        backgroundImage(),
        topButton(),
        boxGlass(),
      ],
    );
  }

  Widget content() {
    Widget descriptionText(String text) {
      final styleButton = TextStyle(
        fontSize: 16,
        color: brownColor,
      );

      return ReadMoreText(
        text,
        trimLines: 2,
        trimMode: TrimMode.Line,
        trimCollapsedText: 'Read More',
        trimExpandedText: 'show Less',
        moreStyle: styleButton,
        lessStyle: styleButton,
        style: whiteTextStyle.copyWith(fontSize: 16),
      );
    }

    Widget orderSize() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Size',
              style: greyTextStyle.copyWith(fontSize: 16),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomButton(
                    margin: const EdgeInsets.only(right: 10),
                    color: backgroundColor2,
                    onPressed: () {},
                    child: Text(
                      'S',
                      style: whiteTextStyle.copyWith(
                          fontSize: 18, fontWeight: medium),
                    ),
                    minimumSize: const Size.fromHeight(40),
                    border: BorderRadius.circular(defaultRadius),
                  ),
                ),
                Expanded(
                  child: CustomButton(
                    margin: const EdgeInsets.only(right: 10),
                    color: backgroundColor2,
                    onPressed: () {},
                    child: Text(
                      'M',
                      style: whiteTextStyle.copyWith(
                          fontSize: 18, fontWeight: medium),
                    ),
                    minimumSize: const Size.fromHeight(40),
                    border: BorderRadius.circular(defaultRadius),
                  ),
                ),
                Expanded(
                  child: CustomButton(
                    color: backgroundColor2,
                    onPressed: () {},
                    child: Text(
                      'L',
                      style: whiteTextStyle.copyWith(
                          fontSize: 18, fontWeight: medium),
                    ),
                    minimumSize: const Size.fromHeight(40),
                    border: BorderRadius.circular(defaultRadius),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget orderButton() {
      return Container(
        margin: const EdgeInsets.only(top: 40),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  'Price',
                  style: greyTextStyle,
                ),
                Text(
                  '\$ 4.20',
                  style: whiteTextStyle.copyWith(
                      fontSize: 25, fontWeight: semiBold),
                ),
              ],
            ),
            Expanded(
              child: CustomButton(
                margin: EdgeInsets.only(left: 20),
                border: BorderRadius.circular(20),
                minimumSize: const Size.fromHeight(70),
                color: brownColor,
                onPressed: () {},
                child: Text(
                  'Buy Now',
                  style: whiteTextStyle.copyWith(
                      fontSize: 25, fontWeight: semiBold),
                ),
              ),
            )
          ],
        ),
      );
    }

    return Container(
      margin: EdgeInsets.all(defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: greyTextStyle.copyWith(fontSize: 16),
          ),
          const SizedBox(height: 20),
          descriptionText('''
A cappuccino is a coffee-based drink made primarily from espresso and milk. It consists of one-third espresso, one-third heated milk and one-third milk foam and is generally served in a 6 to 8-ounce cup.\n
The cappuccino is considered one of the original espresso drinks representative of Italian espresso cuisine and eventually Italian-American espresso cuisine.
'''),
          orderSize(),
          orderButton(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor1,
        body: SingleChildScrollView(
          child: Column(
            children: [
              header(),
              content(),
            ],
          ),
        ));
  }
}
