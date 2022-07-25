import 'package:alt_ed_app/constant/constants.dart';
import 'package:alt_ed_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    child: Center(
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/Ellipse.png',
                            width: 144,
                            height: 144,
                          ),
                          Positioned(
                            top: 32,
                            right: 2,
                            child: Image.asset(
                              'assets/logo.png',
                              width: 144,
                              height: 72,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: kGetSize(context).width * 0.10),
                    child: Text(
                      'Login',
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
                        onPressed: () {},
                        child: Text(
                          'Login',
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
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'New to ALT-ED?',
                          style: GoogleFonts.openSans(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, Routes.signUpScreen);
                            },
                            child: Text(
                              'Create your account',
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: kDarkColor),
                            ),
                            style: TextButton.styleFrom(
                                minimumSize: Size.zero,
                                padding: EdgeInsets.zero,
                                tapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap)),
                      ],
                    ),
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
