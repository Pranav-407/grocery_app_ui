import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app_ui/widgets/custom_bottom_nav_bar.dart';
import 'package:grocery_app_ui/widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 30,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset("assets/svg/login_logo.svg"),
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  'Loging',
                  style: GoogleFonts.dmSans(
                      fontSize: 26, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Enter your emails and password',
                  style: GoogleFonts.dmSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(124, 124, 124, 1)),
                ),
                SizedBox(
                  height: 40,
                ),
                CustomTextField(
                  placeholder: "imshuvo97@gmail.com",
                  label: "Email",
                  controller: emailController,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  placeholder: "Enter Password",
                  label: "Password",
                  controller: passwordController,
                  isPassword: true,
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.dmSans(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                        color: Color.fromRGBO(24, 23, 37, 1)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const BottomNavBarScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 67,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(83, 177, 117, 1),
                        borderRadius: BorderRadius.circular(19)),
                    child: Center(
                      child: Text(
                        "Log In",
                        style: GoogleFonts.dmSans(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ? ",
                      style: GoogleFonts.dmSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(24, 23, 37, 1),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.dmSans(
                          color: Color.fromRGBO(83, 177, 117, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
