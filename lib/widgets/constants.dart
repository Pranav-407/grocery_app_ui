import 'package:flutter/material.dart';

List exclusiveOffers = [
  {
    "image": "assets/images/banana.png",
    "title": "Organic Bananas",
    "subTitle": "7pcs, Priceg",
    "price": "₹60.00",
    "description":
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been 1500s, but also the leap into electronic typesetting, remaining essentially unchanged."
  },
  {
    "image": "assets/images/apple.png",
    "title": "Red Apple",
    "subTitle": "1kg, Priceg",
    "price": "₹60.00",
    "description":
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been 1500s, but also the leap into electronic typesetting, remaining essentially unchanged."
  },
  {
    "image": "assets/images/banana.png",
    "title": "Organic Bananas",
    "subTitle": "7pcs, Priceg",
    "price": "₹60.00",
    "description":
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been 1500s, but also the leap into electronic typesetting, remaining essentially unchanged."
  },
  {
    "image": "assets/images/apple.png",
    "title": "Red Apple",
    "subTitle": "1kg, Priceg",
    "price": "₹60.00",
    "description":
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been 1500s, but also the leap into electronic typesetting, remaining essentially unchanged."
  },
];

List bestSelling = [
  {
    "image": "assets/images/bell_pepper_red.png",
    "title": "Bell Pepper Red",
    "subTitle": "1kg, Priceg",
    "price": "₹60.00",
    "description":
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been 1500s, but also the leap into electronic typesetting, remaining essentially unchanged."
  },
  {
    "image": "assets/images/ginger.png",
    "title": "Ginger",
    "subTitle": "250gm, Priceg",
    "price": "₹60.00",
    "description":
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been 1500s, but also the leap into electronic typesetting, remaining essentially unchanged."
  },
  {
    "image": "assets/images/bell_pepper_red.png",
    "title": "Bell Pepper Red",
    "subTitle": "1kg, Priceg",
    "price": "₹60.00",
    "description":
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been 1500s, but also the leap into electronic typesetting, remaining essentially unchanged."
  },
  {
    "image": "assets/images/ginger.png",
    "title": "Ginger",
    "subTitle": "250gm, Priceg",
    "price": "₹60.00",
    "description":
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been 1500s, but also the leap into electronic typesetting, remaining essentially unchanged."
  },
];

List groceries = [
  {
    "image": "assets/images/banana.png",
    "title": "Orgaanic Bananas",
    "subTitle": "7pcs, Priceg",
    "price": "₹60.00",
    "description":
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been 1500s, but also the leap into electronic typesetting, remaining essentially unchanged."
  },
  {
    "image": "assets/images/chicken.png",
    "title": "Broiler Chicken",
    "subTitle": "1Kg, Priceg",
    "price": "₹60.00",
    "description":
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been 1500s, but also the leap into electronic typesetting, remaining essentially unchanged."
  },
  {
    "image": "assets/images/banana.png",
    "title": "Orgaanic Bananas",
    "subTitle": "7pcs, Priceg",
    "price": "₹60.00",
    "description":
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been 1500s, but also the leap into electronic typesetting, remaining essentially unchanged."
  },
  {
    "image": "assets/images/chicken.png",
    "title": "Broiler Chicken",
    "subTitle": "1Kg, Priceg",
    "price": "₹60.00",
    "description":
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been 1500s, but also the leap into electronic typesetting, remaining essentially unchanged."
  }
];

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

List favourite = [
  {
    "image": "assets/images/sprite.png",
    "title": "Sprite Can",
    "subTitle": "325ml, Price",
    "price": "₹60.00",
  },
  {
    "image": "assets/images/diet_coke.png",
    "title": "Diet Coke",
    "subTitle": "355ml, Price",
    "price": "₹55.00",
  },
  {
    "image": "assets/images/sprite.png",
    "title": "Apple & Grape Juice",
    "subTitle": "2L, Price",
    "price": "₹105.00",
  },
  {
    "image": "assets/images/coca_cola.png",
    "title": "Coca Cola Can",
    "subTitle": "325ml, Price",
    "price": "₹75.00",
  },
  {
    "image": "assets/images/pepsi.png",
    "title": "Pepsi Can",
    "subTitle": "335ml, Price",
    "price": "₹65.00",
  }
];

List myCart = [
  {
    "image": "assets/images/apple.png",
    "title": "Naturel Red Apple",
    "subTitle": "1Kg, Price",
    "price": "₹60.00",
  },
  {
    "image": "assets/images/ginger.png",
    "title": "Ginger",
    "subTitle": "250g, Price",
    "price": "₹55.00",
  },
  {
    "image": "assets/images/banana.png",
    "title": "Organic Bananas",
    "subTitle": "6pcs, Price",
    "price": "₹35.00",
  },
  {
    "image": "assets/images/bell_pepper_red.png",
    "title": "Bell Pepper Red",
    "subTitle": "1Kg, Price",
    "price": "₹75.00",
  }
];
