import 'package:alt_ed_app/constant/constants.dart';
import 'package:alt_ed_app/model/subject_destails.dart';
import 'package:alt_ed_app/routes.dart';
import 'package:alt_ed_app/widgets/listview_builder_with_card.dart';
import 'package:alt_ed_app/widgets/subject_name_and_select_option.dart';
import 'package:alt_ed_app/widgets/user_level_details_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseSubjectScreen extends StatelessWidget {
  ChooseSubjectScreen({Key? key}) : super(key: key);
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: SizedBox(
          height: kGetSize(context).height,
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              const Center(
                child: UserLevelDetailsContainer(),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  child: SingleChildScrollView(
                    physics: const ScrollPhysics(),
                    controller: _scrollController,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SubjectNameAndSelectOption(
                          text: 'General Subjects',
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        ListViewBuilderWithCard(
                          scrollController: _scrollController,
                          listOfSubjects: SubjectDetail.listOfSubjects,
                          function: () {
                            Navigator.pushNamed(context,
                                Routes.chooseParticularFieldOfSubjectScreen);
                          },
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const SubjectNameAndSelectOption(
                            text: 'Engineering Subjects'),
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
