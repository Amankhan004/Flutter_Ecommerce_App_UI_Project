// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class ProductDescription extends StatefulWidget {
  final Color selectedColor; 

  const ProductDescription({Key? key, required this.selectedColor}) : super(key: key);

  @override
  _ProductDescriptionState createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  bool showFullDescription = false;
   bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(top: 20),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        children: [
       const   Align(
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Keep shopping here with us",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
           Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isFavorited = !isFavorited;
                });
              },
              child: Container(
                width: 64,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: isFavorited ? Colors.red : Color.fromARGB(255, 252, 212, 212),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Icon(
                  isFavorited ? Icons.favorite : Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 64),
            child: Text(
              "McDonald's is a globally renowned fast-food restaurant chain, known for its iconic menu items like the Big Mac and Chicken McNuggets. With a presence in over 100 countries, it offers quick, affordable, and familiar dining experiences to millions of customers.",
              style: const TextStyle(fontSize: 16, color: Color.fromARGB(255, 97, 97, 97)),
              maxLines: showFullDescription ? null : 3, 
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: InkWell(
                onTap: () {
                  setState(() {
                    showFullDescription = !showFullDescription;
                  });
                },
                child: Row(
                  children: [
                    Text(
                      showFullDescription ? "See Less Details" : "See More Details",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: widget.selectedColor, 
                      ),
                    ),
                    const SizedBox(width: 2),
                    Icon(
                      showFullDescription ? Icons.arrow_upward : Icons.arrow_downward,
                      size: 13,
                      color: widget.selectedColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
