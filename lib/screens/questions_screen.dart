import 'package:alt_ed_app/constant/constants.dart';
import 'package:alt_ed_app/routes.dart';
import 'package:alt_ed_app/widgets/choose_answer_button.dart';
import 'package:alt_ed_app/widgets/listview_builder_with_circular_button.dart';
import 'package:alt_ed_app/widgets/user_losing_column_with_buttons.dart';
import 'package:alt_ed_app/widgets/user_score_&_timer_container.dart';
import 'package:alt_ed_app/widgets/user_winner_column_with_buttons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary2Color,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: kGetSize(context).height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Expanded(
                  flex: 1,
                  child: UserScoreAndTimerContainer(),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: kGetSize(context).width * 0.08),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Question 3',
                              style: GoogleFonts.openSans(
                                textStyle: const TextStyle(
                                    color: kSecondaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              'The book “Zulfi, My friend is written by _____________?',
                              style: GoogleFonts.openSans(
                                textStyle: const TextStyle(
                                    color: kDarkColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          children: [
                            ChooseAnswerButton(
                              multipleChoiceAnswer: 'Pillo Modi',
                              multipleChoiceNumber: 'A',
                              onTap: () {
                                buildGeneralDialog(
                                    context,
                                    const UserLosingColumnWithButtons(
                                        text1: '', text2: 'Tie'));
                              },
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            ChooseAnswerButton(
                                multipleChoiceAnswer: 'Pillo Modi',
                                multipleChoiceNumber: 'B',
                                onTap: () {
                                  buildGeneralDialog(
                                      context,
                                      const UserLosingColumnWithButtons(
                                        text1: 'You Lose!',
                                        text2: 'Better Luck, Next Time',
                                      ));
                                }),
                            const SizedBox(
                              height: 8,
                            ),
                            ChooseAnswerButton(
                                multipleChoiceAnswer: 'Pillo Modi',
                                multipleChoiceNumber: 'C',
                                onTap: () {
                                  Navigator.pushReplacementNamed(
                                      context, Routes.startTwoPlayerGameScreen);
                                }),
                            const SizedBox(
                              height: 8,
                            ),
                            ChooseAnswerButton(
                                multipleChoiceAnswer: 'Pillo Modi',
                                multipleChoiceNumber: 'D',
                                onTap: () {
                                  buildShowDialog(context,
                                      const UserWinnerColumnWithButtons());
                                }),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const SizedBox(
                        height: 50,
                        child: ListViewBuilderWithCircularButtons(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
