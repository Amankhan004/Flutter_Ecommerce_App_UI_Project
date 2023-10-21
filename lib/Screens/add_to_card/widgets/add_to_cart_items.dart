import 'package:ecommerce_app_complete_ui_project/Data/category_data/restaurants_data.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/add_to_card/widgets/att_to_card.dart';
import 'package:ecommerce_app_complete_ui_project/utils/App_colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class AddToCartItems extends StatefulWidget {
  final List<ItemData> items;

  AddToCartItems({required this.items});

  @override
  State<AddToCartItems> createState() => _AddToCartItemsState();
}

class _AddToCartItemsState extends State<AddToCartItems> {
  int itemCount = 1;

  void incrementItem() {
    setState(() {
      itemCount++;
    });
  }

  void decrementItem(ItemData item) {
    setState(() {
      itemCount--;
    });
  }

  void deleteItem(ItemData item) {
    if (itemCount == 0) {
      setState(() {
        removeFromCart(item);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final cartItems = widget.items.isEmpty;
    return Expanded(
      child: SingleChildScrollView(
        child: cartItems
            ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  LottieBuilder.asset(
                    "lib/utils/Animation - 1697537825432.json",
                    height: 250,
                    reverse: true,
                    repeat: true,
                    fit: BoxFit.cover,
                  ),
                  Center(
                      child: Text(
                    "Your Cart is Empty :(",
                    style: GoogleFonts.manrope(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  )),
                ],
              )
            : Column(
                children: List.generate(widget.items.length, (index) {
                  final itemData = widget.items[index];

                  return Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.cardColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      leading: Image(
                        height: 90,
                        width: 80,
                        image: AssetImage(itemData.itemImage),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 5),
                          Text(
                            itemData.itemName,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '\$${itemData.price.toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 126, 125, 125),
                            ),
                          ),
                        ],
                      ),
                      trailing: SizedBox(
                        width: 109,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              height: 33,
                              width: 33,
                              child: InkWell(
                                onTap: () {
                                  decrementItem(itemData);
                                  deleteItem(itemData);
                                },
                                child: const Icon(Icons.remove),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              height: 33,
                              width: 33,
                              child: InkWell(
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    itemCount.toString(),
                                    style: const TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              height: 33,
                              width: 33,
                              child: InkWell(
                                onTap: () {
                                  incrementItem();
                                },
                                child: const Icon(Icons.add),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
      ),
    );
  }
}
