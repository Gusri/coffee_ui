import 'package:coffee_ui/theme.dart';
import 'package:flutter/material.dart';

class SpecialTile extends StatelessWidget {
  final String imgUrl;
  final String text;
  const SpecialTile({
    Key? key,
    required this.imgUrl,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.only(
          bottom: defaultMargin, left: defaultMargin, right: defaultMargin),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: backgroundColor2.withOpacity(
          0.6,
        ),
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(defaultRadius),
            child: Image.asset(
              imgUrl,
              width: 100,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
              child: Text(
            text,
            style: whiteTextStyle.copyWith(fontSize: 18),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ))
        ],
      ),
    );
  }
}
