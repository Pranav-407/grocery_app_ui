import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});

  TextEditingController searchController = TextEditingController();

  final List<Map<String, dynamic>> gridData = [
    {
      'imagePath': "assets/images/fresh_fruits_and_vegetables.png",
      "backgroundColor": Color.fromRGBO(83, 177, 117, 0.1),
      "borderColor": Color.fromRGBO(83, 177, 117, 0.7),
      "title": "Fresh Fruits & Vegetable"
    },
    {
      'imagePath': "assets/images/cooking_oil_and_ghee.png",
      "backgroundColor": Color.fromRGBO(248, 164, 76, 0.1),
      "borderColor": Color.fromRGBO(248, 164, 76, 0.7),
      "title": "Cooking Oil & Ghee"
    },
    {
      'imagePath': "assets/images/meat_and_fish.png",
      "backgroundColor": Color.fromRGBO(247, 165, 147, 0.25),
      "borderColor": Color.fromRGBO(247, 165, 147, 1),
      "title": "Meat & Fish"
    },
    {
      'imagePath': "assets/images/bakery_and_snacks.png",
      "backgroundColor": Color.fromRGBO(211, 176, 224, 0.25),
      "borderColor": Color.fromRGBO(211, 176, 224, 1),
      "title": "Bakery & Snacks"
    },
    {
      'imagePath': "assets/images/dairy_and_eggs.png",
      "backgroundColor": Color.fromRGBO(253, 229, 152, 0.25),
      "borderColor": Color.fromRGBO(253, 229, 152, 1),
      "title": "Dairy & Eggs"
    },
    {
      'imagePath': "assets/images/bevrages.png",
      "backgroundColor": Color.fromRGBO(183, 223, 245, 0.25),
      "borderColor": Color.fromRGBO(183, 223, 245, 1),
      "title": "Beverages"
    },
    {
      'imagePath': "assets/images/fresh_fruits_and_vegetables.png",
      "backgroundColor": Color.fromRGBO(83, 177, 117, 0.1),
      "borderColor": Color.fromRGBO(83, 177, 117, 0.7),
      "title": "Fresh Fruits & Vegetable"
    },
    {
      'imagePath': "assets/images/cooking_oil_and_ghee.png",
      "backgroundColor": Color.fromRGBO(248, 164, 76, 0.1),
      "borderColor": Color.fromRGBO(248, 164, 76, 0.7),
      "title": "Cooking Oil & Ghee"
    },
    {
      'imagePath': "assets/images/meat_and_fish.png",
      "backgroundColor": Color.fromRGBO(247, 165, 147, 0.25),
      "borderColor": Color.fromRGBO(247, 165, 147, 1),
      "title": "Meat & Fish"
    },
    {
      'imagePath': "assets/images/bakery_and_snacks.png",
      "backgroundColor": Color.fromRGBO(211, 176, 224, 0.25),
      "borderColor": Color.fromRGBO(211, 176, 224, 1),
      "title": "Bakery & Snacks"
    },
    {
      'imagePath': "assets/images/dairy_and_eggs.png",
      "backgroundColor": Color.fromRGBO(253, 229, 152, 0.25),
      "borderColor": Color.fromRGBO(253, 229, 152, 1),
      "title": "Dairy & Eggs"
    },
    {
      'imagePath': "assets/images/bevrages.png",
      "backgroundColor": Color.fromRGBO(183, 223, 245, 0.25),
      "borderColor": Color.fromRGBO(183, 223, 245, 1),
      "title": "Beverages"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Find Products",
            style: GoogleFonts.dmSans(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 10, width: double.infinity),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(242, 243, 242, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 52,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/svg/search.svg"),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          style: GoogleFonts.dmSans(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          controller: searchController,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Search Store",
                            hintStyle: GoogleFonts.dmSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.9,
                ),
                itemCount: gridData.length,
                itemBuilder: (context, index) => GridItem(gridData[index]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final Map<String, dynamic> data;

  const GridItem(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: data['backgroundColor'],
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: data['borderColor']),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 25),
                child: Column(
                  children: [
                    Transform.scale(
                      scale: 1.1,
                      child: Image.asset(data['imagePath']),
                    ),
                    Spacer(),
                    Text(
                      data['title'],
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
