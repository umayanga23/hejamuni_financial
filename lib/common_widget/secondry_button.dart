import 'package:flutter/material.dart';
import 'package:hejamuni_financial/common/color_extension.dart';

class SecondryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double fontSize;
  final FontWeight fontWeight;
  const SecondryButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w600,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/img/secodry_btn.png"),
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          // ✅ Added Center
          child: Text(
            title,
            style: TextStyle(
              color: TColor.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ), // ✅ Center closed
      ), // ✅ Container closed
    );
  }
}
