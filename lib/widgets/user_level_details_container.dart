import 'package:alt_ed_app/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserLevelDetailsContainer extends StatelessWidget {
  const UserLevelDetailsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 368,
      height: 80,
      decoration: const BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              children: [
                Image.asset(
                  'assets/image1.png',
                  width: 64,
                  height: 64,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Usama',
                  style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                        color: kDarkColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/icon2.png'),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Begginer',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: kDarkColor),
                  ),
                ),
                const SizedBox(width: 8),
                Image.asset('assets/icon1.png'),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Level 1',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: kDarkColor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
