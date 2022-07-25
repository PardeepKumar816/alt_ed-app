import 'package:alt_ed_app/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWithTextAndBackArrowIcon extends StatelessWidget {
  const ButtonWithTextAndBackArrowIcon(
      {Key? key,
      required this.onTap,
      required this.text,
      required this.containerWidth,
      required this.containerHeight,
      required this.iconWidth,
      required this.iconHeight})
      : super(key: key);

  final Function onTap;
  final String text;
  final double containerWidth;
  final double containerHeight;
  final double iconWidth;
  final double iconHeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap.call();
      },
      child: Stack(
        alignment: AlignmentDirectional.centerEnd,
        children: [
          Container(
            width: 208.0,
            height: 51.0,
            decoration: BoxDecoration(
                border: Border.all(color: kPrimary2Color, width: 3),
                borderRadius: BorderRadius.circular(24.0),
                color: kPrimary2Color),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Text(
                  text,
                  style: GoogleFonts.openSans(
                      color: kDarkColor,
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 16)),
                ),
              ),
            ),
          ),
          Container(
            width: 54.9,
            height: 54.9,
            child: const Icon(
              Icons.arrow_forward_sharp,
              color: kDarkColor,
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: kDarkColor.withOpacity(0.25),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: const Offset(0, 6), // changes position of shadow
                ),
              ],
              shape: BoxShape.circle,
              color: kSecondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
