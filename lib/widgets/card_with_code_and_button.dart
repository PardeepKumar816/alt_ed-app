import 'package:alt_ed_app/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'button_with_text_and_back_arrow_icon.dart';

class CardWithCodeAndButton extends StatelessWidget {
  const CardWithCodeAndButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 339,
      height: 352,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '20GV456',
            style: GoogleFonts.openSans(
                color: kDarkColor,
                textStyle:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 35)),
          ),
          Text(
            '*Share this code to your partner',
            style: GoogleFonts.openSans(
                color: kDarkColor,
                textStyle:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 15)),
          ),
          const SizedBox(
            height: 39,
          ),
          ButtonWithTextAndBackArrowIcon(
              onTap: () {},
              text: 'Copy Code',
              containerWidth: 149,
              containerHeight: 49,
              iconWidth: 51.9,
              iconHeight: 51.9)
        ],
      ),
    );
  }
}
