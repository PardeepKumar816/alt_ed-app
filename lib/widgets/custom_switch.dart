import 'package:alt_ed_app/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final String text;
  final Color color;
  final Color textColor;

  CustomSwitch(
      {Key? key,
      required this.value,
      required this.onChanged,
      required this.text,
      required this.color,
      required this.textColor})
      : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
  Animation? _circleAnimation;
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 60));
    _circleAnimation = AlignmentTween(
            begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
            end: widget.value ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(
            parent: _animationController!, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController!,
      builder: (context, child) {
        return GestureDetector(
          onTap: widget.onChanged == null
              ? null
              : () {
                  if (_animationController!.isCompleted) {
                    _animationController!.reverse();
                  } else {
                    _animationController!.forward();
                  }
                  widget.value == false
                      ? widget.onChanged!(true)
                      : widget.onChanged!(false);
                },
          child: Container(
            width: 141.0,
            height: 49.0,
            decoration: BoxDecoration(
              border: Border.all(color: widget.color, width: 3),
              borderRadius: BorderRadius.circular(24.0),
              color: _circleAnimation!.value == Alignment.centerLeft
                  ? kSecondaryColor
                  : kPrimary2Color,
            ),
            child: Container(
              alignment:
                  widget.value ? Alignment.centerRight : Alignment.centerLeft,
              child: widget.value
                  ? Container(
                      width: 44.9,
                      height: 51.9,
                      child: Icon(
                        Icons.arrow_forward_sharp,
                        color: widget.textColor,
                      ),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: kDarkColor.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: const Offset(
                                0, 6), // changes position of shadow
                          ),
                        ],
                        shape: BoxShape.circle,
                        color: _circleAnimation!.value == Alignment.centerLeft
                            ? widget.color
                            : kSecondaryColor,
                      ),
                    )
                  : Row(
                      children: [
                        Container(
                          width: 44.9,
                          height: 51.9,
                          child: Icon(
                            Icons.arrow_forward_sharp,
                            color: widget.textColor,
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: kDarkColor.withOpacity(0.25),
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset: const Offset(
                                    0, 6), // changes position of shadow
                              ),
                            ],
                            shape: BoxShape.circle,
                            color:
                                _circleAnimation!.value == Alignment.centerLeft
                                    ? widget.color
                                    : kSecondaryColor,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          widget.text,
                          style: GoogleFonts.openSans(
                              color: widget.textColor,
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16)),
                        ),
                      ],
                    ),
            ),
          ),
        );
      },
    );
  }
}
