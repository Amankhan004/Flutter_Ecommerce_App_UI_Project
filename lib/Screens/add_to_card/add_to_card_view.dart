import 'package:ecommerce_app_complete_ui_project/Screens/add_to_card/widgets/add_to_cart_items.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/add_to_card/widgets/att_to_card.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/add_to_card/widgets/custom_calculation.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/checkout_view/checkout_view.dart';
import 'package:ecommerce_app_complete_ui_project/Widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AddToCartView extends StatefulWidget {
  const AddToCartView({
    super.key,
    this.products,
  });
  final List<dynamic>? products;

  @override
  State<AddToCartView> createState() => _AddToCartViewState();
}

class _AddToCartViewState extends State<AddToCartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            height: 302,
            color: const Color(0xFFF9B023),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 8, 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(24)),
                              height: 48,
                              width: 48,
                              child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Icon(
                                      Icons.arrow_back_ios_new_outlined))),
                          SizedBox(
                            width: 10,
                          ),
                          const SizedBox(
                            
                            width: 150,
                            child: Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                'Shopping Cart (5)',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF1E222B),
                                  fontSize: 19,
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.w400,
                                  height: 0.09,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: SvgPicture.asset(
                            "Assets/App_images/addtocardimages/Vector 368.svg"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Stack(
                        children: [
                          Text(
                            "25%",
                            style: GoogleFonts.manrope(
                                fontSize: 110,
                                color: const Color(0xFFFAFAFC),
                                fontWeight: FontWeight.w900),
                            textAlign: TextAlign.right,
                          ),
                          Positioned(
                            right: 10,
                            child: Text(
                              "OFF!!",
                              style: GoogleFonts.manrope(
                                  fontSize: 20,
                                  color: const Color(0xFFFAFAFC),
                                  fontWeight: FontWeight.w900),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 49,
                  // decoration: BoxDecoration(color: Color(0xFFF9B023)),
                  color: Color.fromARGB(255, 248, 170, 13),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Use code',
                              style: TextStyle(
                                color: Color(0xFF1E222B),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: ' #HalalFood ',
                              style: TextStyle(
                                color: Color(0xFF1E222B),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: 'at Checkouut',
                              style: TextStyle(
                                color: Color(0xFF1E222B),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          AddToCartItems(items: cartItems,),
          // Expanded(
          //   child: isNew
          //       ? const Column(
          //           mainAxisAlignment: MainAxisAlignment.start,
          //           children: [
          //             // LottieBuilder.asset(
          //             //   // "assets/empty.json",

          //             //   // height: 250,
          //             //   // reverse: true,
          //             //   // repeat: true,
          //             //   // fit: BoxFit.cover,
          //             // ),
          //             // Center(
          //             //     child: Text(
          //             //   // "Your Cart is Empty :(",
          //             // //   style: GoogleFonts.manrope(
          //             // //       fontWeight: FontWeight.bold, fontSize: 16),
          //             // // )),
          //           ],
          //         )
          //       : ListView.builder(
          //           itemCount: widget.products?.length,
          //           itemBuilder: (context, index) {
          //             return ListTile(
          //               tileColor: Colors.transparent,
          //               title: Text(
          //                 widget.products?[index].name,
          //                 style:
          //                     GoogleFonts.manrope(fontWeight: FontWeight.w800),
          //               ),
          //               subtitle: Text("\$${widget.products?[index].price}"),
          //               // trailing: Text("Quantity: ${item.quantity}"),
          //               trailing: Row(
          //                 mainAxisSize: MainAxisSize.min,
          //                 mainAxisAlignment: MainAxisAlignment.end,
          //                 children: [
          //                   Text(
          //                       "${widget.products?[index].quantity.toString()}x"),
          //                   IconButton(
          //                     icon: const Icon(Icons.remove),
          //                     onPressed: () {
          //                       // print(widget.products?.map((hi) => hi.name));
          //                       setState(() {
          //                         if (widget.products?[index].quantity !=
          //                             null) {
          //                           if (widget.products?[index].quantity > 0) {
          //                             widget.products?[index].quantity--;
          //                           }
          //                           // ignore: unrelated_type_equality_checks
          //                           if (widget.products?[index].quantity == 0) {
          //                             widget.products?.removeAt(index);
          //                           }
          //                         }
          //                       });
          //                     },
          //                   ),
          //                 ],
          //               ),
          //             );
          //           },
          //         ),
          // ),
          CustomCalculation(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
          context, MaterialPageRoute(builder: (context) => CheckoutScreen()));
              },
              child: const CustomButton(
                color: Color(0xFF2A4BA0),
                text: "Proceed to Checkout",
              ),
            ),
          )
        ],
      ),
    ));
  }
}
