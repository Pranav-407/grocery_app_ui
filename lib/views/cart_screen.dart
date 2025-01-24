import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app_ui/widgets/constants.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // Quantity map to track individual item quantities
  Map<int, int> itemQuantities = {};

  // Calculate total price for an item
  double calculateItemTotal(int index) {
    // Remove '$' and convert to double
    double price = double.parse(myCart[index]['price'].substring(1));
    int quantity = itemQuantities[index] ?? 1;
    return price * quantity;
  }

  // Calculate overall cart total
  double calculateCartTotal() {
    return myCart.asMap().entries.map((entry) {
      return calculateItemTotal(entry.key);
    }).reduce((a, b) => a + b);
  }

  @override
  void initState() {
    super.initState();
    // Initialize quantities to 1 for each item
    itemQuantities = { for (var index in Iterable.generate(myCart.length)) index : 1 };
  }

  int getItemQuantity(int index) {
    return itemQuantities[index] ?? 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "My Cart",
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
                      height: 160,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Image.asset(myCart[index]['image']),
                          SizedBox(width: 25),
                          Expanded(
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      myCart[index]['title'],
                                      style: GoogleFonts.dmSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      myCart[index]['subTitle'],
                                      style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(124, 124, 124, 1),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              // Prevent quantity from going below 1
                                              itemQuantities[index] =
                                                  (itemQuantities[index]! > 1)
                                                      ? itemQuantities[index]! -
                                                          1
                                                      : 1;
                                            });
                                          },
                                          child: Container(
                                            height: 45,
                                            width: 45,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(17),
                                              border: Border.all(
                                                color: Color.fromRGBO(
                                                    226, 226, 226, 1),
                                              ),
                                            ),
                                            child: Icon(
                                              Icons.remove,
                                              color: Color.fromRGBO(
                                                  179, 179, 179, 1),
                                              size: 27,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                        Center(
                                          child: Text(
                                            "${getItemQuantity(index)}",
                                            style: GoogleFonts.dmSans(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              // Increment quantity
                                              itemQuantities[index] =
                                                  (itemQuantities[index] ?? 1) +
                                                      1;
                                            });
                                          },
                                          child: Container(
                                            height: 45,
                                            width: 45,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(17),
                                              border: Border.all(
                                                color: Color.fromRGBO(
                                                    226, 226, 226, 1),
                                              ),
                                            ),
                                            child: Icon(
                                              Icons.add,
                                              color: Color.fromRGBO(
                                                  83, 177, 117, 1),
                                              size: 27,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "\$${calculateItemTotal(index).toStringAsFixed(2)}",
                                      style: GoogleFonts.dmSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      "Qty: ${getItemQuantity(index)}",
                                      style: GoogleFonts.dmSans(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
                                ),
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
                  itemCount: myCart.length,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    Container(
                      height: 67,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19),
                        color: Color.fromRGBO(83, 177, 117, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(width: 45,),
                            Center(
                              child: Text(
                                "Go To Checkout",
                                style: GoogleFonts.dmSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ),
                            Spacer(),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 15),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color.fromRGBO(72, 158, 103, 1)
                              ),
                              child: Center(
                                child: Text(
                                  "\$${calculateCartTotal().toStringAsFixed(2)}",
                                  style: GoogleFonts.dmSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
