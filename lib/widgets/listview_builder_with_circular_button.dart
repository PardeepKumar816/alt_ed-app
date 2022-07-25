import 'package:alt_ed_app/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListViewBuilderWithCircularButtons extends StatefulWidget {
  const ListViewBuilderWithCircularButtons({
    Key? key,
  }) : super(key: key);

  @override
  State<ListViewBuilderWithCircularButtons> createState() =>
      _ListViewBuilderWithCircularButtonsState();
}

class _ListViewBuilderWithCircularButtonsState
    extends State<ListViewBuilderWithCircularButtons> {
  late int tapIndex;

  @override
  void initState() {
    super.initState();
    tapIndex = 0; // make sure no buttons are clicked in the initial state
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                tapIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: (index > tapIndex + 1 || index < tapIndex - 1)
                      ? kSecondaryColor.withOpacity(0.25)
                      : (tapIndex == index
                          ? kSecondaryColor
                          : kSecondaryColor.withOpacity(0.5)),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Center(
                  child: Text(
                    (index + 1).toString(),
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 24)),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
