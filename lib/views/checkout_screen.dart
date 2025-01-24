import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app_ui/views/order_accepted_screen.dart';

class CheckoutBottomSheet extends StatelessWidget {
  const CheckoutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(width: double.infinity),
          Row(
            children: [
              Text(
                "Checkout",
                style: GoogleFonts.dmSans(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              GestureDetector(onTap: () {
                Navigator.of(context).pop();
              },child: Icon(Icons.close, color: Colors.black))
            ],
          ),
          SizedBox(height: 10),
          Line(),
          Info(label: "Delivery", details: "Select Method"),
          Line(),
          Info(label: "Payment", details: "UPI / Debit Card"),
          Line(),
          Info(label: "Promo Code", details: "Pick Discount"),
          Line(),
          Info(label: "Total Cost", details: "Select Method"),
          Line(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text.rich(
              TextSpan(
                text: 'By placing an order you agree to our\n',
                style: GoogleFonts.dmSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(124, 124, 124, 1),
                ),
                children: [
                  TextSpan(
                    text: 'Terms',
                    style: GoogleFonts.dmSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(24, 23, 37, 1),
                    ),
                  ),
                  TextSpan(
                    text: ' And ',
                    style: GoogleFonts.dmSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(124, 124, 124, 1),
                    ),
                  ),
                  TextSpan(
                    text: 'Conditions.',
                    style: GoogleFonts.dmSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(24, 23, 37, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => OrderAcceptedScreen(),));
            },
            child: Container(
              height: 68,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                color: Color.fromRGBO(83, 177, 117, 1),
              ),
              child: Center(
                child: Text(
                  "Place Order",
                  style: GoogleFonts.dmSans(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: Color.fromRGBO(226, 226, 226, 0.7),
    );
  }
}

class Info extends StatelessWidget {
  final String label;
  final String details;
  const Info({super.key, required this.label, required this.details});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: [
          Text(
            label,
            style: GoogleFonts.dmSans(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(124, 124, 124, 1),
            ),
          ),
          Spacer(),
          Text(
            details,
            style: GoogleFonts.dmSans(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 13),
          Icon(Icons.arrow_forward_ios_rounded, size: 17)
        ],
      ),
    );
  }
}
