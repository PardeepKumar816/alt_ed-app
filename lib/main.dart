import 'package:alt_ed_app/routes.dart';
import 'package:alt_ed_app/screens/choose_no_of_player_screen.dart';
import 'package:alt_ed_app/screens/choose_particular_field_of_subject_screen.dart';
import 'package:alt_ed_app/screens/choose_subject_screen.dart';
import 'package:alt_ed_app/screens/login_screen.dart';
import 'package:alt_ed_app/screens/questions_screen.dart';
import 'package:alt_ed_app/screens/signup_screen.dart';
import 'package:alt_ed_app/screens/start_two_player_game_screen.dart';
import 'package:alt_ed_app/screens/user_losing_screen.dart';
import 'package:alt_ed_app/screens/user_score_board_screen.dart';
import 'package:alt_ed_app/screens/user_tie_screen.dart';
import 'package:alt_ed_app/screens/user_winning_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Alt Ed',
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
      routes: Routes.getRoutes(context),
    );
  }
}
