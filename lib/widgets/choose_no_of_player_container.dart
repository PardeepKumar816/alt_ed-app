import 'package:alt_ed_app/constant/constants.dart';
import 'package:flutter/material.dart';

class ChooseNoOfPlayerContainer extends StatelessWidget {
  const ChooseNoOfPlayerContainer(
      {Key? key, required this.image, required this.opacity})
      : super(key: key);
  final String image;
  final double opacity;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      height: 140,
      decoration: BoxDecoration(
        color: kPrimary2Color.withOpacity(opacity),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        boxShadow: [
          BoxShadow(
            color: kDarkColor.withOpacity(0.25),
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Image.asset(
        image,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
