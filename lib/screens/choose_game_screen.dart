import 'package:alt_ed_app/constant/constants.dart';
import 'package:alt_ed_app/routes.dart';
import 'package:alt_ed_app/screens/choose_no_of_player_screen.dart';
import 'package:alt_ed_app/widgets/choose_game_container.dart';
import 'package:alt_ed_app/widgets/icon_button_with_arrow.dart';
import 'package:alt_ed_app/widgets/user_level_detail_with_icon_button_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseGameScreen extends StatelessWidget {
  const ChooseGameScreen({Key? key}) : super(key: key);

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
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ChooseGameContainer(
                                    opacity: 0.65,
                                    image: 'assets/image3.png',
                                    function: () {},
                                  ),
                                  const VerticalDivider(
                                    width: 24,
                                    color: kSecondary2Color,
                                    thickness: 2,
                                  ),
                                  ChooseGameContainer(
                                    opacity: 0.65,
                                    image: 'assets/image3.png',
                                    function: () {},
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 24,
                              thickness: 2,
                              color: kSecondary2Color,
                              endIndent: kGetSize(context).width / 3,
                              indent: kGetSize(context).width / 3,
                            ),
                            Center(
                              child: ChooseGameContainer(
                                opacity: 1,
                                image: 'assets/image4.png',
                                function: () {
                                  Navigator.pushNamed(
                                      context, Routes.chooseNoOfPlayerScreen);
                                },
                              ),
                            ),
                          ],
                        ),
                        // Center(
                        //   child: Container(
                        //     decoration: BoxDecoration(
                        //       boxShadow: [
                        //         BoxShadow(
                        //           color: kDarkColor.withOpacity(0.25),
                        //           blurRadius: 28,
                        //           offset: const Offset(0, 2),
                        //         ),
                        //       ],
                        //     ),
                        //     child: ElevatedButton(
                        //       onPressed: () {
                        //         Navigator.pushReplacementNamed(
                        //             context, Routes.questionScreen);
                        //       },
                        //       child: Row(
                        //         mainAxisAlignment: MainAxisAlignment.center,
                        //         mainAxisSize: MainAxisSize.min,
                        //         children: [
                        //           Text(
                        //             'Let\'s Start',
                        //             style: GoogleFonts.openSans(
                        //               textStyle: const TextStyle(
                        //                   fontSize: 15,
                        //                   fontWeight: FontWeight.w700,
                        //                   color: kDarkColor),
                        //             ),
                        //           ),
                        //           const SizedBox(
                        //             width: 4,
                        //           ),
                        //           const Icon(
                        //             Icons.arrow_forward_sharp,
                        //             color: kDarkColor,
                        //             size: 18,
                        //           ),
                        //         ],
                        //       ),
                        //       style: ButtonStyle(
                        //         backgroundColor:
                        //             MaterialStateProperty.all(kPrimary2Color),
                        //         minimumSize: MaterialStateProperty.all(
                        //           const Size(336, 56),
                        //         ),
                        //         shape: MaterialStateProperty.all(
                        //           const RoundedRectangleBorder(
                        //             borderRadius: BorderRadius.all(
                        //               Radius.circular(60),
                        //             ),
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
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
