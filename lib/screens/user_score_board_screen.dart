// import 'package:alt_ed_app/constant/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class UserScoreBoardScreen extends StatelessWidget {
//   const UserScoreBoardScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kPrimary2Color,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/image1.png',
//               width: 160,
//               height: 160,
//               fit: BoxFit.fill,
//             ),
//             Text(
//               'Usama',
//               textAlign: TextAlign.center,
//               style: GoogleFonts.openSans(
//                   textStyle: const TextStyle(
//                 fontSize: 50,
//                 fontWeight: FontWeight.w700,
//               )),
//             ),
//             Divider(
//               color: kDarkColor.withOpacity(0.5),
//               indent: 40,
//               endIndent: 40,
//               // thickness: 1,
//             ),
//             const SizedBox(
//               height: 16,
//             ),
//             Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Column(
//                     children: [
//                       Image.asset(
//                         'assets/histogram.png',
//                         width: 60,
//                         height: 60,
//                       ),
//                       const SizedBox(
//                         height: 8,
//                       ),
//                       Text(
//                         '250',
//                         style: GoogleFonts.openSans(
//                             textStyle: const TextStyle(
//                                 fontWeight: FontWeight.w700, fontSize: 20)),
//                       )
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       Image.asset(
//                         'assets/cup.png',
//                         width: 61,
//                         height: 52,
//                       ),
//                       const SizedBox(
//                         height: 8,
//                       ),
//                       Text(
//                         '0',
//                         style: GoogleFonts.openSans(
//                             textStyle: const TextStyle(
//                                 fontWeight: FontWeight.w700, fontSize: 20)),
//                       )
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       Image.asset(
//                         'assets/position.png',
//                         width: 58,
//                         height: 58,
//                       ),
//                       const SizedBox(
//                         height: 8,
//                       ),
//                       Text(
//                         '100',
//                         style: GoogleFonts.openSans(
//                             textStyle: const TextStyle(
//                                 fontWeight: FontWeight.w700, fontSize: 20)),
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 16,
//             ),
//             Divider(
//               color: kDarkColor.withOpacity(0.5),
//               indent: 40,
//               endIndent: 40,
//               thickness: 1,
//             ),
//             const SizedBox(
//               height: 80,
//             ),
//             Center(
//               child: Container(
//                 decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: kDarkColor.withOpacity(0.25),
//                       blurRadius: 28,
//                       offset: const Offset(0, 2),
//                     ),
//                   ],
//                 ),
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   child: Text(
//                     'Watch Our Season Prizes',
//                     style: GoogleFonts.openSans(
//                       textStyle: const TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.w600,
//                           color: kDarkColor),
//                     ),
//                   ),
//                   style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all(kSecondaryColor),
//                     minimumSize: MaterialStateProperty.all(
//                       const Size(336, 56),
//                     ),
//                     shape: MaterialStateProperty.all(
//                       const RoundedRectangleBorder(
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(60),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
