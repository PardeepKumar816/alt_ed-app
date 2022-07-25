import 'package:alt_ed_app/screens/choose_game_screen.dart';
import 'package:alt_ed_app/screens/choose_no_of_player_screen.dart';
import 'package:alt_ed_app/screens/choose_particular_field_of_subject_screen.dart';
import 'package:alt_ed_app/screens/choose_subject_screen.dart';
import 'package:alt_ed_app/screens/leaderboard_screen.dart';
import 'package:alt_ed_app/screens/questions_screen.dart';
import 'package:alt_ed_app/screens/signup_screen.dart';
import 'package:alt_ed_app/screens/start_two_player_game_screen.dart';
import 'package:alt_ed_app/screens/user_profile_screen.dart';

import 'screens/login_screen.dart';

class Routes {
  static String loginScreen = '/LoginScreen';
  static String signUpScreen = '/SignUpScreen';
  static String chooseGameScreen = '/ChooseGameScreen';
  static String chooseSubjectScreen = '/ChooseSubjectScreen';
  static String chooseParticularFieldOfSubjectScreen =
      '/ChooseParticularFieldOfSubjectScreen';
  static String questionScreen = '/QuestionsScreen';
  //static String userScoreBoardScreen = '/UserScoreBoardScreen';
  // static String userWinningScreen = '/UserWinningScreen';
  // static String userLosingScreen = '/UserLosingScreen';
  // static String userTieScreen = '/UserTieScreen';
  static String chooseNoOfPlayerScreen = '/ChooseNoOfPlayerScreen';
  static String startTwoPlayerGameScreen = '/StartTwoPlayerGameScreen';
  static String leaderBoardScreen = '/LeaderBoardScreen';
  static String userProfileScreen = '/UserProfileScreen';

  static getRoutes(context) => {
        Routes.loginScreen: (context) => const LoginScreen(),
        Routes.signUpScreen: (context) => const SignUpScreen(),
        Routes.chooseGameScreen: (context) => const ChooseGameScreen(),
        Routes.chooseSubjectScreen: (context) => ChooseSubjectScreen(),
        Routes.chooseParticularFieldOfSubjectScreen: (context) =>
            ChooseParticularFieldOfSubjectScreen(),
        Routes.questionScreen: (context) => QuestionsScreen(),
        //  Routes.userScoreBoardScreen: (context) => UserScoreBoardScreen(),
        //Routes.userWinningScreen: (context) => UserWinningScreen(),
        //  Routes.userLosingScreen: (context) => UserLosingScreen(),
        //  Routes.userTieScreen: (context) => UserTieScreen(),
        Routes.chooseNoOfPlayerScreen: (context) => ChooseNoOfPlayerScreen(),
        Routes.startTwoPlayerGameScreen: (context) =>
            StartTwoPlayerGameScreen(),
        Routes.leaderBoardScreen: (context) => LeaderBoardScreen(),
        Routes.userProfileScreen: (context) => UserProfileScreen(),
      };
}
