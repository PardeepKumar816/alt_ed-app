import 'package:alt_ed_app/model/subject_destails.dart';
import 'package:alt_ed_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListViewBuilderWithCard extends StatelessWidget {
  const ListViewBuilderWithCard(
      {Key? key,
      required ScrollController scrollController,
      required this.listOfSubjects,
      required this.function})
      : _scrollController = scrollController,
        super(key: key);

  final ScrollController _scrollController;
  final List listOfSubjects;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      thumbVisibility: true,
      interactive: true,
      thumbColor: Colors.black,
      controller: _scrollController,
      radius: const Radius.circular(60),
      thickness: 6,
      child: ListView.separated(
        controller: _scrollController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: listOfSubjects.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 344,
            height: 96,
            child: Card(
              elevation: 12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: InkWell(
                onTap: () {
                  function.call();
                },
                child: ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text(
                      listOfSubjects[index].name,
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                  ),
                  subtitle: Text(
                    listOfSubjects[index].description,
                    style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w400, fontSize: 10),
                  ),
                  trailing: Image.asset(listOfSubjects[index].imageUrl),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 16,
          );
        },
      ),
    );
  }
}
