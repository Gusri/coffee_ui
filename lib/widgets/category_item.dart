import 'package:coffee_ui/theme.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String text;
  // final Color tes;
  // final textStyle = greyTextStyle.copyWith(fontSize: 16, fontWeight: medium);
  // final TextStyle textStyle;
  const CategoryItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: defaultMargin),
      child: Column(
        children: [
          Text(
            text,
            style: greyTextStyle,
          ),
          const SizedBox(height: 5),
          Container(
            width: 10,
            height: 10,
            // padding: EdgeInsets.symmetric(horizontal: 10),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: brownColor),
          ),
        ],
      ),
    );
  }
}
