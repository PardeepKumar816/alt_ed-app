import 'package:alt_ed_app/constant/constants.dart';
import 'package:flutter/material.dart';

class ChooseGameContainer extends StatelessWidget {
  const ChooseGameContainer(
      {Key? key,
      required this.image,
      required this.opacity,
      required this.function})
      : super(key: key);

  final double opacity;
  final String image;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        function.call();
      },
      child: Container(
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
        child: Stack(
          children: [
            Image.asset(
              'assets/image2.png',
              width: double.infinity,
              height: double.infinity,
            ),
            Image.asset(
              image,
              width: double.infinity,
              height: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
