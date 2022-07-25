import 'package:alt_ed_app/constant/constants.dart';
import 'package:alt_ed_app/routes.dart';
import 'package:alt_ed_app/widgets/choose_no_of_player_container.dart';
import 'package:alt_ed_app/widgets/column_with_back_arrow_button_icon.dart';
import 'package:alt_ed_app/widgets/custom_switch.dart';
import 'package:alt_ed_app/widgets/user_level_detail_with_icon_button_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseNoOfPlayerScreen extends StatefulWidget {
  const ChooseNoOfPlayerScreen({Key? key}) : super(key: key);

  @override
  State<ChooseNoOfPlayerScreen> createState() => _ChooseNoOfPlayerScreenState();
}

class _ChooseNoOfPlayerScreenState extends State<ChooseNoOfPlayerScreen> {
  bool _enableSinglePerson = false;
  bool _enableTwoPlayer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(
              height: kGetSize(context).height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    flex: 1,
                    child: UserLevelDetailWithIconButtonContainer(),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: kGetSize(context).width * 0.05),
                          child: Text(
                            'Choose Game',
                            style: GoogleFonts.openSans(
                              textStyle: const TextStyle(
                                  color: Color(0xff020202),
                                  fontSize: 32,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ChooseNoOfPlayerContainer(
                                        opacity: _enableTwoPlayer
                                            ? 0.7
                                            : 1, // _opacity1,
                                        image: 'assets/single_person.png',
                                      ),
                                      const VerticalDivider(
                                        width: 24,
                                        color: kSecondary2Color,
                                        thickness: 2,
                                      ),
                                    ],
                                  ),
                                  CustomSwitch(
                                    color: _enableTwoPlayer
                                        ? kPrimary2Color.withOpacity(0.7)
                                        : kPrimary2Color,
                                    textColor: _enableSinglePerson
                                        ? kDarkColor.withOpacity(0.7)
                                        : kDarkColor,
                                    text: 'Single',
                                    value: _enableSinglePerson,
                                    onChanged: _enableTwoPlayer
                                        ? null
                                        : (bool val) {
                                            setState(() {
                                              _enableSinglePerson = val;
                                              // _enableTwoPlayer = false;
                                            });
                                          },
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ChooseNoOfPlayerContainer(
                                        opacity: _enableSinglePerson
                                            ? 0.7
                                            : 1, //_opacity2,
                                        image: 'assets/multiple_person.png',
                                      ),
                                      const VerticalDivider(
                                        width: 24,
                                        color: kSecondary2Color,
                                        thickness: 2,
                                      ),
                                    ],
                                  ),
                                  CustomSwitch(
                                    color: _enableSinglePerson
                                        ? kPrimary2Color.withOpacity(0.7)
                                        : kPrimary2Color,
                                    textColor: _enableSinglePerson
                                        ? kDarkColor.withOpacity(0.7)
                                        : kDarkColor,
                                    text: '2 Player',
                                    value: _enableTwoPlayer,
                                    onChanged: _enableSinglePerson
                                        ? null
                                        : (bool val) {
                                            setState(() {
                                              _enableTwoPlayer = val;
                                              //  _enableSinglePerson = false;
                                            });
                                          },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
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
                                if (_enableSinglePerson) {
                                  Navigator.pushReplacementNamed(
                                      context, Routes.questionScreen);
                                } else if (_enableTwoPlayer) {
                                  buildShowDialog(context,
                                      const ColumnWithBackArrowIconButton());
                                }
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Let\'s Start',
                                    style: GoogleFonts.openSans(
                                      textStyle: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: kDarkColor),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_sharp,
                                    color: kDarkColor,
                                    size: 18,
                                  ),
                                ],
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(kPrimary2Color),
                                minimumSize: MaterialStateProperty.all(
                                  const Size(336, 56),
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
                        const SizedBox(
                          height: 1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
