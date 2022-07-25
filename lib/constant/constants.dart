import 'package:alt_ed_app/widgets/button_with_text_and_back_arrow_icon.dart';
import 'package:alt_ed_app/widgets/column_with_back_arrow_button_icon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kPrimary2Color = Color(0xffffffff);
const Color kPrimaryColor = Color(0xffececec);
const Color kSecondaryColor = Color(0xFFFFCC00);
const Color kSecondary2Color = Color(0xffD8AD03);
const Color kTextFieldColor = Color(0xffededed);
const Color kDarkColor = Color(0xff000000);
const Color kErrorColor = Color(0xffff1515);

InputDecoration kTextFieldDecoration = InputDecoration(
  fillColor: kPrimary2Color,
  filled: true,
  contentPadding: const EdgeInsets.all(16),
  hintStyle: GoogleFonts.openSans(
    textStyle: const TextStyle(color: Colors.black54),
  ),
  border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide.none),
);

const BoxDecoration kBoxDecoration = BoxDecoration(
  color: kSecondaryColor,
  boxShadow: [
    BoxShadow(
      color: Color(0xffD8AD03),
      spreadRadius: 0,
      blurRadius: 10,
      offset: Offset(0, 2), // changes position of shadow
    ),
  ],
);

Size kGetSize(context) {
  Size size = MediaQuery.of(context).size;
  return size;
}

Future<dynamic> buildShowDialog(BuildContext context, Widget child) {
  return showDialog(
    context: context,
    builder: (_) => Material(
      color: kDarkColor.withOpacity(0.7),
      type: MaterialType.transparency,
      child: Center(
        // Aligns the container to center
        child: child,
      ),
    ),
  );
}

Future<dynamic> buildGeneralDialog(BuildContext context, Widget child) {
  return showGeneralDialog(
    context: context,
    barrierColor: kDarkColor.withOpacity(0.7), // Background color
    barrierDismissible: false,
    barrierLabel: 'Dialog',
    transitionDuration: const Duration(milliseconds: 400),
    pageBuilder: (_, __, ___) {
      return Material(
        color: kDarkColor.withOpacity(0.7),
        type: MaterialType.transparency,
        child: Center(
          // Aligns the container to center
          child: child,
        ),
      );
    },
  );
}
