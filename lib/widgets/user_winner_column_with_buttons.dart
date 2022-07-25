import 'package:alt_ed_app/constant/constants.dart';
import 'package:alt_ed_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

class UserWinnerColumnWithButtons extends StatelessWidget {
  const UserWinnerColumnWithButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationZ(math.pi),
          child: Image.asset(
            'assets/firework.png',
          ),
        ),
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image.asset('assets/firework.png'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 339,
                  height: 350,
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'You Win!',
                        style: GoogleFonts.openSans(
                            textStyle: const TextStyle(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w600,
                                fontSize: 36)),
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                          Image.asset(
                            'assets/winner.png',
                            width: 320,
                            height: 240,
                          ),
                          Positioned(
                            child: Text(
                              'Congratulations',
                              style: GoogleFonts.openSans(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 64,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: kDarkColor.withOpacity(0.25),
                          blurRadius: 28,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.leaderBoardScreen);
                      },
                      child: Text(
                        'Leader Board',
                        style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: kDarkColor),
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(kPrimary2Color),
                        fixedSize: MaterialStateProperty.all(
                          const Size(336, 56),
                        ),
                        shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(60),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 13,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: kDarkColor.withOpacity(0.25),
                          blurRadius: 28,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.userProfileScreen);
                      },
                      child: Text(
                        'Show Profile',
                        style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: kDarkColor),
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(kPrimary2Color),
                        fixedSize: MaterialStateProperty.all(
                          const Size(336, 56),
                        ),
                        shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(60),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
