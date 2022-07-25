import 'dart:async';
import 'package:alt_ed_app/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseAnswerButton extends StatefulWidget {
  const ChooseAnswerButton(
      {Key? key,
      required this.multipleChoiceAnswer,
      required this.multipleChoiceNumber,
      required this.onTap})
      : super(key: key);

  final String multipleChoiceNumber;
  final String multipleChoiceAnswer;
  final Function onTap;

  @override
  State<ChooseAnswerButton> createState() => _ChooseAnswerButtonState();
}

class _ChooseAnswerButtonState extends State<ChooseAnswerButton> {
  Color buttonColor = kPrimary2Color;
  Color textColor = kDarkColor;
  double elevation = 1;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          buttonColor = kSecondaryColor;
          textColor = kPrimary2Color;
          elevation = 5;
          Timer(const Duration(milliseconds: 500), () {
            widget.onTap.call();
          });
        });
      },
      child: Stack(
        children: [
          Align(
            child: Text(
              widget.multipleChoiceAnswer,
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: textColor),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 8,
            child: Text(
              widget.multipleChoiceNumber,
              style: GoogleFonts.openSans(
                textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: kDarkColor),
              ),
            ),
          ),
        ],
      ),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(elevation),
        backgroundColor: MaterialStateProperty.all(buttonColor),
        fixedSize: MaterialStateProperty.all(
          const Size(342, 46),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            side: BorderSide(color: kDarkColor.withOpacity(0.1), width: 1),
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
