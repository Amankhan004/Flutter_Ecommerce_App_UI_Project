import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app_complete_ui_project/Data/category_data/restaurants_data.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/add_to_card/widgets/att_to_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCalculation extends StatefulWidget {
  final List<ItemData> items; // Add this line

  CustomCalculation({required this.items});

  @override
  State<CustomCalculation> createState() => _CustomCalculationState();
}

class _CustomCalculationState extends State<CustomCalculation> {
  @override
  Widget build(BuildContext context) {
    double total = 0;
    double deliveryCharges = 0.1;

    // Assuming a fixed 10% delivery charge

    for (final item in widget.items) {
      total += item.price * quantity; // Use item.count to get the quantity
    }

    double subTotal = total + (total * deliveryCharges);

    setState(() {});

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: GoogleFonts.manrope(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('\$${total.toStringAsFixed(2)}'), // Show total
              ],
            ),
            const Divider(thickness: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery Charges",
                  style: GoogleFonts.manrope(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                    '\$${(total * deliveryCharges).toStringAsFixed(2)}'), // Show delivery charges
              ],
            ),
            const Divider(thickness: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sub Total",
                  style: GoogleFonts.manrope(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('\$${subTotal.toStringAsFixed(2)}'), // Show sub-total
              ],
            )
          ],
        ),
      ),
    );
  }
}
