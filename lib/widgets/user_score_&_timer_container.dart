import 'package:alt_ed_app/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserScoreAndTimerContainer extends StatelessWidget {
  const UserScoreAndTimerContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kGetSize(context).width,
      height: kGetSize(context).height * 0.3,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: kDarkColor.withOpacity(0.25),
            blurRadius: 10,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 248,
            height: 53,
            decoration: const BoxDecoration(
              color: kSecondary2Color,
              borderRadius: BorderRadius.all(
                Radius.circular(80),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/image1.png',
                  width: 40,
                  height: 40,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.access_time_rounded,
                      size: 16,
                    ),
                    const SizedBox(
                      width: 1.5,
                    ),
                    Text(
                      '00:30',
                      style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14)),
                    )
                  ],
                ),
                Image.asset(
                  'assets/image1.png',
                  width: 40,
                  height: 40,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 248,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '7',
                  style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w600)),
                ),
                const SizedBox(
                  width: 24,
                ),
                Text(
                  '5',
                  style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w600)),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
