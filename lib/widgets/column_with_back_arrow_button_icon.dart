import 'package:alt_ed_app/constant/constants.dart';
import 'package:alt_ed_app/widgets/button_with_text_and_back_arrow_icon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'card_with_code_and_button.dart';

class ColumnWithBackArrowIconButton extends StatelessWidget {
  const ColumnWithBackArrowIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonWithTextAndBackArrowIcon(
          containerHeight: 51.0,
          containerWidth: 208.0,
          iconHeight: 54.9,
          iconWidth: 54.9,
          onTap: () {
            buildShowDialog(
              context,
              const CardWithCodeAndButton(),
            );
          },
          text: 'Generate Code',
        ),
        const SizedBox(
          height: 90,
        ),
        ButtonWithTextAndBackArrowIcon(
          containerHeight: 51.0,
          containerWidth: 208.0,
          iconHeight: 54.9,
          iconWidth: 54.9,
          onTap: () {
            buildShowDialog(
              context,
              ContainerWithTextField(),
            );
          },
          text: 'Enter Code',
        ),
      ],
    );
  }
}

class ContainerWithTextField extends StatelessWidget {
  ContainerWithTextField({
    Key? key,
  }) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 339,
      height: 238,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Container(
                width: 304,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: kDarkColor.withOpacity(0.25),
                        blurRadius: 29,
                        offset: const Offset(0, 5)),
                  ],
                ),
                child: TextFormField(
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'enter your code'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Provide a Valid code';
                    }
                    return null;
                  },
                ),
              ),
            ),
            Container(
              width: 304,
              height: 40,
              alignment: Alignment.centerRight,
              child: Text(
                '*Wait few seconds',
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: kPrimaryColor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
