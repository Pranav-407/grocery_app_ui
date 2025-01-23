import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  List exclusiveOffers = [
    {
      "image": "assets/images/banana.png",
      "title": "Organic Bananas",
      "subTitle": "7pcs, Priceg",
    },
    {
      "image": "assets/images/apple.png",
      "title": "Red Apple",
      "subTitle": "1kg, Priceg",
    },
    {
      "image": "assets/images/banana.png",
      "title": "Organic Bananas",
      "subTitle": "7pcs, Priceg",
    },
    {
      "image": "assets/images/apple.png",
      "title": "Red Apple",
      "subTitle": "1kg, Priceg",
    },
  ];

  List bestSelling = [
    {
      "image": "assets/images/bell_pepper_red.png",
      "title": "Bell Pepper Red",
      "subTitle": "1kg, Priceg",
    },
    {
      "image": "assets/images/ginger.png",
      "title": "Ginger",
      "subTitle": "250gm, Priceg",
    },
    {
      "image": "assets/images/bell_pepper_red.png",
      "title": "Bell Pepper Red",
      "subTitle": "1kg, Priceg",
    },
    {
      "image": "assets/images/ginger.png",
      "title": "Ginger",
      "subTitle": "250gm, Priceg",
    },
  ];
  
  List groceries = [
    {
      "image": "assets/images/banana.png",
      "title": "Orgaanic Bananas",
      "subTitle": "7pcs, Priceg",
    },
    {
      "image": "assets/images/chicken.png",
      "title": "Broiler Chicken",
      "subTitle": "1Kg, Priceg",
    },
    {
      "image": "assets/images/banana.png",
      "title": "Orgaanic Bananas",
      "subTitle": "7pcs, Priceg",
    },
    {
      "image": "assets/images/chicken.png",
      "title": "Broiler Chicken",
      "subTitle": "1Kg, Priceg",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(width: double.infinity, height: 10),
                Transform.scale(
                  scale: 0.7,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset("assets/svg/login_logo.svg"),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/svg/location.svg"),
                    SizedBox(width: 5.5),
                    Text(
                      "Pune, Maharashtra",
                      style: GoogleFonts.dmSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(76, 79, 77, 1)),
                    )
                  ],
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(242, 243, 242, 1),
                        borderRadius: BorderRadius.circular(15)),
                    height: 52,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/svg/search.svg"),
                          SizedBox(width: 10),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: TextField(
                                style: GoogleFonts.dmSans(color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                controller: searchController,
                                decoration: InputDecoration(
      
                                    border: UnderlineInputBorder(
                                        borderSide: BorderSide.none),
                                    hintText: "Search Store",
                                    hintStyle: GoogleFonts.dmSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        // color: Colors.amber,
                        borderRadius: BorderRadius.circular(8)),
                    height: 115,
                    child: Image.asset('assets/images/banner.jpg'),
                  ),
                ),
                SizedBox(height: 30),
                HeaderItem(label: "Exclusive Offer"),
                HorizonalItems(items: exclusiveOffers),
                SizedBox(height: 30),
                HeaderItem(label: "Best Selling"),
                HorizonalItems(items: bestSelling),
                SizedBox(height: 30),
                HeaderItem(label: "Groceries"),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(248, 164, 76, 0.3),
                              borderRadius: BorderRadius.circular(18)),
                          height: 105,
                          width: 250,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 17, vertical: 15),
                            child: Row(
                              children: [
                                Image.asset("assets/images/pulses.png"),
                                SizedBox(width: 15),
                                Text(
                                  "Pulses",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(62, 66, 63, 1)),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(83, 177, 117, 0.4),
                              borderRadius: BorderRadius.circular(18)),
                          height: 105,
                          width: 250,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 17, vertical: 15),
                            child: Row(
                              children: [
                                Image.asset("assets/images/rice.png"),
                                SizedBox(width: 15),
                                Text(
                                  "Rice",
                                  style: GoogleFonts.dmSans(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(62, 66, 63, 1),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                HorizonalItems(items: groceries),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HeaderItem extends StatelessWidget {
  final String label;
  const HeaderItem({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            label,
            style: GoogleFonts.dmSans(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          Spacer(),
          Text(
            'See all',
            style: GoogleFonts.dmSans(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(83, 177, 117, 1)),
          ),
        ],
      ),
    );
  }
}

class HorizonalItems extends StatefulWidget {
  final List items;
  const HorizonalItems({super.key, required this.items});

  @override
  State<HorizonalItems> createState() => _HorizonalItemsState();
}

class _HorizonalItemsState extends State<HorizonalItems> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: SizedBox(
        height: 250,
        child: ListView.builder(
          itemCount: widget.items.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Container(
                height: 250,
                width: 175,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(226, 226, 226, 1),
                    ),
                    borderRadius: BorderRadius.circular(18)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 130,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 22),
                            child: Image.asset(widget.items[index]["image"]),
                          ),
                        ),
                      ),
                      Text(
                        widget.items[index]["title"],
                        style: GoogleFonts.dmSans(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        widget.items[index]["subTitle"],
                        style: GoogleFonts.dmSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(124, 124, 124, 1)),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            "₹60.00",
                            style: GoogleFonts.dmSans(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Spacer(),
                          SvgPicture.asset("assets/svg/add.svg"),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}


