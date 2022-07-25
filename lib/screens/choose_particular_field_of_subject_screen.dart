import 'package:alt_ed_app/constant/constants.dart';
import 'package:alt_ed_app/model/software_engineering.dart';
import 'package:alt_ed_app/routes.dart';
import 'package:alt_ed_app/widgets/icon_button_with_arrow.dart';
import 'package:alt_ed_app/widgets/listview_builder_with_card.dart';
import 'package:alt_ed_app/widgets/subject_name_and_select_option.dart';
import 'package:alt_ed_app/widgets/user_level_details_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseParticularFieldOfSubjectScreen extends StatelessWidget {
  ChooseParticularFieldOfSubjectScreen({Key? key}) : super(key: key);
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: SizedBox(
          height: kGetSize(context).height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              const Center(
                child: UserLevelDetailsContainer(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: IconButtonWithArrow(
                  color: kDarkColor,
                  function: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 24, right: 24, bottom: 24),
                  child: SingleChildScrollView(
                    physics: const ScrollPhysics(),
                    controller: _scrollController,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SubjectNameAndSelectOption(
                            text: 'Software Engineering'),
                        const SizedBox(
                          height: 8,
                        ),
                        ListViewBuilderWithCard(
                          scrollController: ScrollController(),
                          listOfSubjects: SoftwareEngineering.listOfSubjects,
                          function: () {
                            Navigator.pushNamed(
                                context, Routes.chooseGameScreen);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
