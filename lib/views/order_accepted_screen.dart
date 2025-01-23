import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderAcceptedScreen extends StatelessWidget {
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            SvgPicture.asset("assets/svg/order_sucess.svg"),
            const SizedBox(height: 65),
            Text(
              "Your Order has been accepted",
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.dmSans(fontSize: 28, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 20),
            Text(
              "Your items has been placed and is on it's way to being processed",
              style: GoogleFonts.dmSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(124, 124, 124, 1)),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            Text(
              "Back to home",
              style: GoogleFonts.dmSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(24, 23, 37, 1)),
            ),
            SizedBox(height: 40)
          ],
        ),
      ),
    );
  }
}
