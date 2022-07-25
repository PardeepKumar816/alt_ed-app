import 'package:alt_ed_app/constant/constants.dart';
import 'package:alt_ed_app/widgets/icon_button_with_arrow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

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
        child: IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Profile',
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                      color: kSecondaryColor,
                      fontSize: 32,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Center(
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    Image.asset('assets/user_image_with_circle.png'),
                    Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5, right: 5),
                          child: Image.asset('assets/yellow_circle.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6, top: 8),
                          child: Image.asset('assets/camera.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 29, top: 26),
                          child: Image.asset('assets/cloud_upload.png'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icon2.png',
                    color: kSecondaryColor,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Begginer',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: kSecondaryColor),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Image.asset(
                    'assets/icon1.png',
                    color: kSecondaryColor,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Level 1',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: kSecondaryColor),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 58,
              ),
              const Divider(
                color: Color(0xff6B6B6B),
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
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
                height: kGetSize(context).height * 0.07,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 64),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Level',
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            color: kPrimary2Color),
                      ),
                    ),
                    const SizedBox(
                      width: 175,
                    ),
                    Text(
                      '1',
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: kPrimary2Color),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Color(0xff6B6B6B),
                thickness: 1,
              ),
              SizedBox(
                height: kGetSize(context).height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 64),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Total Playes Games',
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            color: kPrimary2Color),
                      ),
                    ),
                    const SizedBox(
                      width: 72,
                    ),
                    Text(
                      '5',
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: kPrimary2Color),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Color(0xff6B6B6B),
                thickness: 1,
              ),
              SizedBox(
                height: kGetSize(context).height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 64),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Win Games',
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            color: kPrimary2Color),
                      ),
                    ),
                    const SizedBox(
                      width: 132,
                    ),
                    Text(
                      '4',
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: kPrimary2Color),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Color(0xff6B6B6B),
                thickness: 1,
              ),
              SizedBox(
                height: kGetSize(context).height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 64),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Lose Games',
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            color: kPrimary2Color),
                      ),
                    ),
                    const SizedBox(
                      width: 128,
                    ),
                    Text(
                      '1',
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: kPrimary2Color),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
