import 'package:alt_ed_app/constant/constants.dart';
import 'package:alt_ed_app/widgets/icon_button_with_arrow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeaderBoardScreen extends StatelessWidget {
  const LeaderBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kDarkColor,
        elevation: 0,
        leading: IconButtonWithArrow(
          function: () {},
          color: kPrimary2Color,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'LeaderBoard',
                  style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                        color: kSecondaryColor,
                        fontSize: 32,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'How it Work',
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: kPrimary2Color,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 19,
                        height: 19,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kDarkColor,
                          border: Border.all(color: kSecondaryColor),
                        ),
                        child: Text(
                          'i',
                          style: GoogleFonts.openSans(
                            textStyle: const TextStyle(
                                color: kSecondaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                SizedBox(
                  width: 223,
                  height: 228,
                  child: Image.asset(
                    'assets/sun_effect.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 50,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Image.asset('assets/user_with_crown_and_number.png'),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Text(
                          '1',
                          style: GoogleFonts.openSans(
                              color: kDarkColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        Image.asset('assets/user_with_number.png'),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 2),
                          child: Text(
                            '2',
                            style: GoogleFonts.openSans(
                                color: kDarkColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        Image.asset('assets/user_with_number.png'),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 2),
                          child: Text(
                            '3',
                            style: GoogleFonts.openSans(
                                color: kDarkColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const Divider(
              color: Color(0xff6B6B6B),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 358,
              height: 49,
              decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your Currently Rank',
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: kDarkColor),
                      ),
                    ),
                    Text(
                      '98/100',
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: kDarkColor),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: kGetSize(context).height * 0.08,
            ),
            const Divider(
              color: Color(0xff6B6B6B),
              thickness: 1,
            ),
            SizedBox(
              height: kGetSize(context).height * 0.04,
            ),
            const Divider(
              color: Color(0xff6B6B6B),
              thickness: 0.7,
            ),
            SizedBox(
              height: kGetSize(context).height * 0.04,
            ),
            const Divider(
              color: Color(0xff6B6B6B),
              thickness: 0.2,
            ),
            SizedBox(
              height: kGetSize(context).height * 0.04,
            ),
            const Divider(
              color: Color(0xff6B6B6B),
              thickness: 0.7,
            ),
            SizedBox(
              height: kGetSize(context).height * 0.04,
            ),
            const Divider(
              color: Color(0xff6B6B6B),
              thickness: 1,
            ),
            SizedBox(
              height: kGetSize(context).height * 0.04,
            ),
            const Divider(
              color: Color(0xff6B6B6B),
              thickness: 0.7,
            ),
          ],
        ),
      ),
    );
  }
}
