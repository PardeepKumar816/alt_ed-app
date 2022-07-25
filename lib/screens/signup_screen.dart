import 'package:alt_ed_app/constant/constants.dart';
import 'package:alt_ed_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          reverse: true,
          children: [
            SizedBox(
              height: kGetSize(context).height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: kGetSize(context).width,
                    height: kGetSize(context).height * 0.35,
                    decoration: kBoxDecoration.copyWith(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/Ellipse.png',
                                  width: 96,
                                  height: 96,
                                ),
                                Positioned(
                                  top: 24,
                                  right: 4,
                                  child: Image.asset(
                                    'assets/logo.png',
                                    width: 96,
                                    height: 48,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 96,
                              child: VerticalDivider(
                                width: 12,
                                color: kSecondary2Color,
                                thickness: 2,
                                //indent: (kGetSize(context).height * 0.35) / 4.2,
                                // endIndent: (kGetSize(context).height * 0.35) / 4.2,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ' Hello,',
                                  style: GoogleFonts.openSans(
                                      textStyle: const TextStyle(
                                          color: kPrimary2Color,
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700)),
                                ),
                                Text(
                                  ' Create Your Account',
                                  style: GoogleFonts.openSans(
                                      textStyle: const TextStyle(
                                          color: kPrimary2Color,
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: kGetSize(context).width * 0.10),
                    child: Text(
                      'Signup',
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff040404)),
                      ),
                    ),
                  ),
                  Center(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Container(
                            width: kGetSize(context).width * 0.80,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: kDarkColor.withOpacity(0.25),
                                    blurRadius: 29,
                                    offset: const Offset(0, 5)),
                              ],
                            ),
                            child: TextFormField(
                              decoration: kTextFieldDecoration.copyWith(
                                  hintText: 'enter your email'),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Provide a Valid Email';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Container(
                            width: kGetSize(context).width * 0.80,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: kDarkColor.withOpacity(0.25),
                                    blurRadius: 29,
                                    offset: const Offset(0, 5)),
                              ],
                            ),
                            child: TextFormField(
                              obscureText: _obscureText,
                              decoration: kTextFieldDecoration.copyWith(
                                hintText: 'enter your password',
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                  icon: _obscureText
                                      ? Image.asset('assets/icon3.png')
                                      : Image.asset('assets/icon4.png'),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Password length should be 8';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Container(
                            width: kGetSize(context).width * 0.80,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: kDarkColor.withOpacity(0.25),
                                    blurRadius: 29,
                                    offset: const Offset(0, 5)),
                              ],
                            ),
                            child: TextFormField(
                              decoration: kTextFieldDecoration.copyWith(
                                  hintText: 'confirm your password'),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Password doesn\'t match';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/facebook_logo.png',
                            // width: 40,
                            // height: 40,
                          ),
                          iconSize: 48,
                          padding: EdgeInsets.zero,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/google_logo.png',
                            // width: 56,
                            // height: 40,
                          ),
                          iconSize: 48,
                          padding: EdgeInsets.zero,
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: kDarkColor.withOpacity(0.25),
                              blurRadius: 29,
                              offset: const Offset(0, 5)),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, Routes.chooseSubjectScreen);
                        },
                        child: Text(
                          'Register',
                          style: GoogleFonts.openSans(
                            textStyle: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: kDarkColor),
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(kSecondaryColor),
                          minimumSize: MaterialStateProperty.all(
                            const Size(248, 48),
                          ),
                          shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, Routes.loginScreen);
                        },
                        child: Text(
                          'Login',
                          style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: kDarkColor),
                        ),
                        style: TextButton.styleFrom(
                            minimumSize: Size.zero,
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }
//
// class _SignUpScreenState extends State<SignUpScreen> {
//   final _formKey = GlobalKey<FormState>();
//   bool _obscureText = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kSecondaryColor,
//       body: SafeArea(
//         child: ListView(
//           shrinkWrap: true,
//           reverse: true,
//           children: [
//             SizedBox(
//               height: kGetSize(context).height,
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 64),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.symmetric(
//                           horizontal: kGetSize(context).width * 0.03),
//                       child: IntrinsicHeight(
//                         child: Row(
//                           children: [
//                             Stack(
//                               children: [
//                                 Image.asset(
//                                   'assets/Ellipse.png',
//                                   width: 96,
//                                   height: 96,
//                                 ),
//                                 Positioned(
//                                   top: 24,
//                                   right: 4,
//                                   child: Image.asset(
//                                     'assets/logo.png',
//                                     width: 96,
//                                     height: 48,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             const VerticalDivider(
//                               width: 12,
//                               color: kSecondary2Color,
//                               thickness: 2,
//                             ),
//                             Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   ' Hello,',
//                                   style: GoogleFonts.openSans(
//                                       textStyle: const TextStyle(
//                                           color: kPrimary2Color,
//                                           fontSize: 24,
//                                           fontWeight: FontWeight.w700)),
//                                 ),
//                                 Text(
//                                   ' Create Your Account',
//                                   style: GoogleFonts.openSans(
//                                       textStyle: const TextStyle(
//                                           color: kPrimary2Color,
//                                           fontSize: 24,
//                                           fontWeight: FontWeight.w700)),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: kGetSize(context).width,
//                       height: kGetSize(context).height * 0.7,
//                       decoration: kBoxDecoration.copyWith(
//                         borderRadius: const BorderRadius.only(
//                           topLeft: Radius.circular(36),
//                           topRight: Radius.circular(36),
//                         ),
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           const SizedBox(
//                             height: 8,
//                           ),
//                           Text('Sign Up',
//                               style: GoogleFonts.openSans(
//                                 textStyle: const TextStyle(
//                                     fontSize: 24,
//                                     fontWeight: FontWeight.w800,
//                                     color: kSecondaryColor),
//                               )),
//                           const SizedBox(
//                             height: 16,
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 56),
//                             child: Form(
//                               key: _formKey,
//                               child: Column(
//                                 children: [
//                                   TextFormField(
//                                     decoration: kTextFieldDecoration.copyWith(
//                                         hintText: 'enter your email'),
//                                     validator: (value) {
//                                       if (value == null || value.isEmpty) {
//                                         return 'Please Provide a Valid Email';
//                                       }
//                                       return null;
//                                     },
//                                   ),
//                                   const SizedBox(
//                                     height: 16,
//                                   ),
//                                   TextFormField(
//                                     obscureText: _obscureText,
//                                     decoration: kTextFieldDecoration.copyWith(
//                                       hintText: 'enter your password',
//                                       suffixIcon: IconButton(
//                                         onPressed: () {
//                                           setState(() {
//                                             _obscureText = !_obscureText;
//                                           });
//                                         },
//                                         icon: _obscureText
//                                             ? Image.asset('assets/icon3.png')
//                                             : Image.asset('assets/icon4.png'),
//                                       ),
//                                     ),
//                                     validator: (value) {
//                                       if (value == null || value.isEmpty) {
//                                         return 'Password length should be 8';
//                                       }
//                                       return null;
//                                     },
//                                   ),
//                                   const SizedBox(
//                                     height: 16,
//                                   ),
//                                   TextFormField(
//                                     decoration: kTextFieldDecoration.copyWith(
//                                         hintText: 'confirm your password'),
//                                     validator: (value) {
//                                       if (value == null || value.isEmpty) {
//                                         return 'Password doesn\'t match';
//                                       }
//                                       return null;
//                                     },
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           IconButton(
//                             onPressed: () {},
//                             icon: Image.asset(
//                               'assets/google_logo.png',
//                               // width: 64,
//                               // height: 48,
//                             ),
//                             iconSize: 48,
//                           ),
//                           ElevatedButton(
//                             onPressed: () {
//                               Navigator.pushReplacementNamed(
//                                   context, Routes.chooseGameScreen);
//                             },
//                             child: Text(
//                               'Register',
//                               style: GoogleFonts.openSans(
//                                 textStyle: const TextStyle(
//                                     fontSize: 24,
//                                     fontWeight: FontWeight.w700,
//                                     color: Colors.black),
//                               ),
//                             ),
//                             style: ButtonStyle(
//                               backgroundColor:
//                                   MaterialStateProperty.all(kSecondaryColor),
//                               minimumSize: MaterialStateProperty.all(
//                                 const Size(248, 48),
//                               ),
//                               shape: MaterialStateProperty.all(
//                                 const RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.all(
//                                     Radius.circular(40),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 'Already have an account?',
//                                 style: GoogleFonts.openSans(
//                                   textStyle: const TextStyle(
//                                       fontWeight: FontWeight.w500,
//                                       fontSize: 12),
//                                 ),
//                               ),
//                               const SizedBox(
//                                 width: 8,
//                               ),
//                               TextButton(
//                                   onPressed: () {
//                                     Navigator.pushReplacementNamed(
//                                         context, Routes.loginScreen);
//                                   },
//                                   child: Text(
//                                     'Login',
//                                     style: GoogleFonts.openSans(
//                                         fontWeight: FontWeight.w700,
//                                         fontSize: 15,
//                                         color: Colors.black),
//                                   ),
//                                   style: TextButton.styleFrom(
//                                       minimumSize: Size.zero,
//                                       padding: EdgeInsets.zero,
//                                       tapTargetSize:
//                                           MaterialTapTargetSize.shrinkWrap)),
//                             ],
//                           ),
//                           const SizedBox(
//                             height: 8,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
