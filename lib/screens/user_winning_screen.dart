// import 'package:alt_ed_app/constant/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class UserWinningScreen extends StatelessWidget {
//   const UserWinningScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kPrimary2Color,
//       body: Stack(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(
//               top: 48,
//               bottom: 16,
//             ),
//             child: Image.asset(
//               'assets/firework.png',
//               height: kGetSize(context).height,
//               width: kGetSize(context).width,
//             ),
//           ),
//           Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Stack(
//                   alignment: AlignmentDirectional.center,
//                   children: [
//                     const SizedBox(
//                       width: 320,
//                       height: 200,
//                     ),
//                     Positioned(
//                       child: Image.asset(
//                         'assets/image1.png',
//                         width: 156,
//                         height: 156,
//                         scale: 1.1,
//                       ),
//                     ),
//                     Positioned(
//                       left: 161,
//                       bottom: 115,
//                       child: Image.asset(
//                         'assets/cup.png',
//                         width: 61,
//                         height: 52,
//                         scale: 1.1,
//                       ),
//                     ),
//                     Positioned(
//                       top: 146,
//                       child: Text(
//                         'Usama',
//                         style: GoogleFonts.openSans(
//                             textStyle: const TextStyle(
//                                 fontSize: 21, fontWeight: FontWeight.w700)),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Text(
//                       'WOW',
//                       style: GoogleFonts.openSans(
//                           textStyle: const TextStyle(
//                               fontWeight: FontWeight.w700, fontSize: 20)),
//                     ),
//                     Text(
//                       'YOU HAVE MADE IT!',
//                       style: GoogleFonts.openSans(
//                           textStyle: const TextStyle(
//                               fontWeight: FontWeight.w700, fontSize: 20)),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 32,
//                 ),
//                 Stack(
//                   alignment: AlignmentDirectional.bottomCenter,
//                   children: [
//                     Image.asset(
//                       'assets/winner.png',
//                       width: 320,
//                       height: 240,
//                     ),
//                     Positioned(
//                       top: 210,
//                       child: Text(
//                         'Congratulations',
//                         style: GoogleFonts.openSans(
//                             textStyle: const TextStyle(
//                                 fontWeight: FontWeight.w500, fontSize: 20)),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
