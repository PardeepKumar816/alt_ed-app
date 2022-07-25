// import 'package:alt_ed_app/constant/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class UserLosingScreen extends StatelessWidget {
//   const UserLosingScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kPrimary2Color,
//       body: Center(
//         child: Stack(
//           alignment: AlignmentDirectional.topCenter,
//           children: [
//             SizedBox(
//               height: kGetSize(context).height,
//               width: kGetSize(context).width,
//             ),
//             Positioned(
//               top: 248,
//               child: Stack(
//                 alignment: AlignmentDirectional.bottomCenter,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(right: 16),
//                     child: Image.asset(
//                       'assets/looser.png',
//                       width: kGetSize(context).width,
//                       height: 400,
//                     ),
//                   ),
//                   Positioned(
//                     top: 340,
//                     child: Column(
//                       children: [
//                         Text(
//                           'YOU LOSE!',
//                           style: GoogleFonts.openSans(
//                               textStyle: const TextStyle(
//                                   fontWeight: FontWeight.w600, fontSize: 20)),
//                         ),
//                         Text(
//                           'Better Luck Next Time',
//                           style: GoogleFonts.openSans(
//                               textStyle: const TextStyle(
//                                   fontWeight: FontWeight.w400, fontSize: 14)),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Positioned(
//               top: 128,
//               child: Stack(
//                 alignment: AlignmentDirectional.center,
//                 children: [
//                   const SizedBox(
//                     width: 320,
//                     height: 200,
//                   ),
//                   Positioned(
//                     child: Image.asset(
//                       'assets/image1.png',
//                       width: 156,
//                       height: 156,
//                       scale: 1.1,
//                     ),
//                   ),
//                   Positioned(
//                     top: 146,
//                     child: Text(
//                       'Usama',
//                       style: GoogleFonts.openSans(
//                           textStyle: const TextStyle(
//                               fontSize: 21, fontWeight: FontWeight.w700)),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
