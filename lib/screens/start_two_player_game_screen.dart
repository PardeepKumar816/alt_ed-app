import 'package:alt_ed_app/constant/constants.dart';
import 'package:alt_ed_app/routes.dart';
import 'package:alt_ed_app/widgets/icon_button_with_arrow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartTwoPlayerGameScreen extends StatelessWidget {
  const StartTwoPlayerGameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary2Color,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: kPrimary2Color,
        leading: IconButtonWithArrow(
          function: () {},
          color: kDarkColor,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              UserLevelDetail(
                name: 'Usama',
                milestone: 'Begginer',
                level: 'Level 1',
              ),
              SizedBox(
                width: 16,
              ),
              SizedBox(
                height: 144,
                child: VerticalDivider(
                  color: kSecondary2Color,
                  thickness: 1,
                  indent: 16,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              UserLevelDetail(
                name: 'Ahmed',
                milestone: 'Begginer',
                level: 'No Level yet',
              ),
            ],
          ),
          const SizedBox(
            height: 100,
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
                  Navigator.pushNamed(context, Routes.questionScreen);
                },
                child: Center(
                  child: Text(
                    'Start Game',
                    style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: kDarkColor),
                    ),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(kSecondaryColor),
                  fixedSize: MaterialStateProperty.all(
                    const Size(333, 54),
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
    );
  }
}

class UserLevelDetail extends StatelessWidget {
  const UserLevelDetail(
      {Key? key,
      required this.name,
      required this.level,
      required this.milestone})
      : super(key: key);

  final String name;
  final String level;
  final String milestone;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/image1.png',
          width: 104,
          height: 104,
        ),
        Text(
          name,
          style: GoogleFonts.openSans(
            textStyle: const TextStyle(
                color: kDarkColor, fontSize: 16, fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icon2.png'),
            const SizedBox(
              width: 4,
            ),
            Text(
              milestone,
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
              level,
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: kDarkColor),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
