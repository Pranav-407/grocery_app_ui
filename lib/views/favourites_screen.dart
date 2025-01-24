import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app_ui/widgets/constants.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({super.key});

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Favourites",
            style: GoogleFonts.dmSans(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 2,
                color: Color.fromRGBO(226, 226, 226, 1),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 115,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Image.asset(favourite[index]['image']),
                          SizedBox(
                            width: 25,
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      favourite[index]['title'],
                                      style: GoogleFonts.dmSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      favourite[index]['subTitle'],
                                      style: GoogleFonts.dmSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color:
                                              Color.fromRGBO(124, 124, 124, 1)),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Text(
                                  favourite[index]['price'],
                                  style: GoogleFonts.dmSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 16,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Container(
                      height: 1,
                      color: Color.fromRGBO(226, 226, 226, 1),
                    );
                  },
                  itemCount: favourite.length,
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25),
                child: Container(
                  height: 67,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    color: Color.fromRGBO(83, 177, 117, 1),
                  ),
                  child: Center(
                    child: Text(
                      "Add All To Cart",
                      style: GoogleFonts.dmSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
