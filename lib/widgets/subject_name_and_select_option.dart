import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubjectNameAndSelectOption extends StatelessWidget {
  const SubjectNameAndSelectOption({Key? key, required this.text})
      : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: GoogleFonts.openSans(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: const Color(0xfff3c304)),
        ),
        Text(
          '*select one subject',
          style: GoogleFonts.openSans(
              fontWeight: FontWeight.w300,
              fontSize: 14,
              color: const Color(0xfff3c304)),
        )
      ],
    );
  }
}
