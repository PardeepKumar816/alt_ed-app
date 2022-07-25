// import 'package:alt_ed_app/constant/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class UserTieScreen extends StatelessWidget {
//   const UserTieScreen({Key? key}) : super(key: key);
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
//               top: 264,
//               child: Stack(
//                 alignment: AlignmentDirectional.bottomCenter,
//                 children: [
//                   Image.asset(
//                     'assets/tie.png',
//                     width: kGetSize(context).width,
//                     height: 400,
//                   ),
//                   Positioned(
//                     top: 310,
//                     child: Column(
//                       children: [
//                         Text(
//                           'TIE',
//                           style: GoogleFonts.openSans(
//                               textStyle: const TextStyle(
//                                   fontWeight: FontWeight.w600, fontSize: 20)),
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
//                     height: 200,
//                     width: 350,
//                   ),
//                   Positioned(
//                     right: 56,
//                     child: Stack(
//                       alignment: AlignmentDirectional.center,
//                       children: [
//                         const SizedBox(
//                           height: 200,
//                           width: 320,
//                         ),
//                         Positioned(
//                           child: Image.asset(
//                             'assets/image1.png',
//                             width: 156,
//                             height: 156,
//                             scale: 1.1,
//                           ),
//                         ),
//                         Positioned(
//                           top: 146,
//                           child: Text(
//                             'Usama',
//                             style: GoogleFonts.openSans(
//                                 textStyle: const TextStyle(
//                                     fontSize: 21, fontWeight: FontWeight.w700)),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Positioned(
//                     left: 56,
//                     child: Stack(
//                       alignment: AlignmentDirectional.center,
//                       children: [
//                         const SizedBox(
//                           width: 320,
//                           height: 200,
//                         ),
//                         Positioned(
//                           child: Image.asset(
//                             'assets/image1.png',
//                             width: 156,
//                             height: 156,
//                             scale: 1.1,
//                           ),
//                         ),
//                         Positioned(
//                           top: 146,
//                           child: Text(
//                             'Ahmed',
//                             style: GoogleFonts.openSans(
//                                 textStyle: const TextStyle(
//                                     fontSize: 21, fontWeight: FontWeight.w700)),
//                           ),
//                         ),
//                       ],
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
