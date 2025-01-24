import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app_ui/widgets/constants.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              floating: true,
              pinned: true,
              snap: false,
              elevation: 0,
              centerTitle: true,
              title: Text(
                "Find Products",
                style: GoogleFonts.dmSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ];
        },
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
            SizedBox(height: 10),
            Expanded(
              child: ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(overscroll: false),
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
