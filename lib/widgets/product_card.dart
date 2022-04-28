import 'package:coffee_ui/theme.dart';
import 'package:coffee_ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String text;
  final double price;
  final double rate;
  final String imgUrl;
  const ProductCard({
    Key? key,
    required this.title,
    required this.text,
    required this.price,
    required this.imgUrl,
    required this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/order');
      },
      child: Container(
        width: 200,
        height: 350,
        margin: const EdgeInsets.only(left: 15, right: 15),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: backgroundColor2.withOpacity(0.5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  child: Image.asset(
                    imgUrl,
                    width: 180,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 80,
                    height: 35,
                    decoration: BoxDecoration(
                      color: backgroundColor1.withOpacity(0.7),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/star_icon.png',
                          width: 20,
                          height: 20,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(rate.toString(), style: whiteTextStyle),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: whiteTextStyle.copyWith(fontSize: 17),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              text,
              style: greyTextStyle,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$ ${price.toString()}',
                  style: whiteTextStyle.copyWith(
                      fontSize: 17, fontWeight: semiBold),
                ),
                CustomButton(
                  color: brownColor,
                  onPressed: () {},
                  border: BorderRadius.circular(11),
                  minimumSize: Size.zero,
                  child: const Icon(Icons.add),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                )
                // CustomButton(color: brownColor)
              ],
            )
          ],
        ),
      ),
    );
  }
}
