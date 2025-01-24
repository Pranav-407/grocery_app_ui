import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemDescriptionScreen extends StatefulWidget {
  const ItemDescriptionScreen({super.key, required this.itemDescription});

  final Map itemDescription;
  @override
  State<ItemDescriptionScreen> createState() => _ItemDescriptionScreenState();
}

class _ItemDescriptionScreenState extends State<ItemDescriptionScreen> {
  
  int quantity = 0;
  double totalCost = 0;
  bool isFavourite = false;

  @override
  void initState() {
    super.initState();
    // Remove '₹' and parse the price
    totalCost = double.parse(widget.itemDescription['price'].replaceAll('₹', '').trim());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(242, 243, 242, 1),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
            size: 27,
          ),
        ),
        actions: [
          Icon(
            Icons.file_upload_outlined,
            color: Colors.black,
            size: 30,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(width: double.infinity),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(242, 243, 242, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                )),
            height: 270,
            width: double.infinity,
            child: Center(
              child: SizedBox(
                width: 330,
                height: 200,
                child: Transform.scale(scale: 2,child: Image.asset(widget.itemDescription['image'])),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      widget.itemDescription['title'],
                      style: GoogleFonts.dmSans(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        isFavourite = !isFavourite;
                        setState(() {});
                      },
                      child: isFavourite ? Icon(
                        Icons.favorite,
                        color: Colors.redAccent,
                        size: 24,
                      ) : Icon(
                        Icons.favorite_border_outlined,
                        size: 24,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  widget.itemDescription['subTitle'],
                  style: GoogleFonts.dmSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(124, 124, 124, 1)),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (quantity!=0) {
                              quantity--;
                              totalCost = double.parse(widget.itemDescription['price'].replaceAll('₹', '').trim()) * quantity;
                              setState(() {});
                            }
                          },
                          child: Icon(
                            Icons.remove,
                            color: Color.fromRGBO(179, 179, 179, 1),
                            size: 27,
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            border: Border.all(
                              color: Color.fromRGBO(226, 226, 226, 1),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "$quantity",
                              style: GoogleFonts.dmSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            quantity++;
                            totalCost = double.parse(widget.itemDescription['price'].replaceAll('₹', '').trim()) * quantity;
                            setState(() {});
                          },
                          child: Icon(
                            Icons.add,
                            color: Color.fromRGBO(83, 177, 117, 1),
                            size: 27,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      quantity==0 ? '₹ 0': '₹ $totalCost',
                      style: GoogleFonts.dmSans(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 1,
                  color: Color.fromRGBO(226, 226, 226, 1),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'Product Detail',
                  style: GoogleFonts.dmSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  widget.itemDescription['description'],style: GoogleFonts.dmSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(124, 124, 124, 1)
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Container(
                  height: 67,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    color: Color.fromRGBO(83, 177, 117, 1),
                  ),
                  child: Center(
                    child: Text(
                      "Add To Basket",
                      style: GoogleFonts.dmSans(
                        fontSize: 18,
                        color: Color.fromRGBO(255, 249, 255, 1),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
