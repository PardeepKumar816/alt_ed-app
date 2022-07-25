import 'package:alt_ed_app/constant/constants.dart';
import 'package:alt_ed_app/widgets/icon_button_with_arrow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserLevelDetailWithIconButtonContainer extends StatelessWidget {
  const UserLevelDetailWithIconButtonContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kGetSize(context).width,
      height: kGetSize(context).height * 0.3,
      decoration: const BoxDecoration(
        color: kPrimary2Color,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            color: kSecondary2Color,
            blurRadius: 10,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Align(
                child: Image.asset(
                  'assets/image1.png',
                  width: 104,
                  height: 104,
                ),
              ),
              Positioned(
                left: 0,
                child: IconButtonWithArrow(
                  color: kDarkColor,
                  function: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
          Text(
            'Usama',
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
        ],
      ),
    );
  }
}
