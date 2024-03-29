import 'package:ecommerce_app_complete_ui_project/Data/category_data/restaurants_data.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/Detail_view/widgets/add_to_cart_button.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/add_to_card/widgets/att_to_card.dart';
import 'package:ecommerce_app_complete_ui_project/Widgets/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app_complete_ui_project/utils/App_colors/colors.dart';

class CustomColorBar extends StatefulWidget {
  final Function(Color) onColorChanged;
  final Function(ItemData) onAddToCart;
  final Function(ItemData) removeFromCart;
  final ItemData itemData; // Add this

  const CustomColorBar({
    Key? key,
    required this.onColorChanged,
    required this.onAddToCart,
    required this.removeFromCart,
    required this.itemData, // Add this
  }) : super(key: key);
  @override
  State<CustomColorBar> createState() => _CustomColorBarState();
}

class _CustomColorBarState extends State<CustomColorBar> {
  int selectedColorIndex = 2;
  int itemCount = 0;
  Color selectedColor = AppColors.lightBlue;

  void incrementItem() {
    setState(() {
      itemCount++;
    });
  }

  void decrementItem() {
    if (itemCount > 0) {
      setState(() {
        itemCount--;
      });
    }
  }

  void changeSelectedColor(Color color) {
    setState(() {
      selectedColor = color;
    });
    widget.onColorChanged(selectedColor);
  }

  bool isItemInCart() {
    // Check if the itemData is in the cartItems list
    return cartItems.contains(widget.itemData);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        for (int index = 0; index < 4; index++)
                          GestureDetector(
                            onTap: () {
                              changeSelectedColor([
                                Colors.red,
                                Colors.green,
                                AppColors.lightBlue,
                                Colors.orange,
                              ][index]);
                              setState(() {
                                selectedColorIndex = index;
                              });
                            },
                            child: Container(
                              width: selectedColorIndex == index ? 50 : 30,
                              height: selectedColorIndex == index ? 50 : 30,
                              margin: const EdgeInsets.symmetric(horizontal: 3),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: [
                                  Colors.red,
                                  Colors.green,
                                  AppColors.lightBlue,
                                  Colors.orange,
                                ][index],
                                border: Border.all(
                                  color: selectedColorIndex == index
                                      ? Colors.orange
                                      : Colors.transparent,
                                  width: selectedColorIndex == index ? 2 : 0,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    height: 48,
                    width: 48,
                    child: InkWell(
                      onTap: () {
                        decrementItem();
                      },
                      child: const Icon(Icons.remove),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    height: 48,
                    width: 48,
                    child: InkWell(
                      onTap: () {
                        // incrementItem();
                      },
                      child: Center(
                        child: Text(
                          itemCount.toString(),
                          style: const TextStyle(
                              fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    height: 48,
                    width: 48,
                    child: InkWell(
                      onTap: () {
                        incrementItem();
                      },
                      child: const Icon(Icons.add),
                    ),
                  ),
                  const SizedBox(width: 15),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 40, 0, 36),
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
              AddToCartButton(
                buttonText: 'Add to Cart',
                buttonColor: selectedColor,
                onPressed: () {
                  if (itemCount == 0) {
                    showCustomToast("Add At Least 1 Item");
                  } else {
                    if (isItemInCart()) {
                      showCustomToast("Item Already in Cart");
                    } else {
                      showCustomToast("Item Added To Cart");
                      widget.onAddToCart(widget.itemData);
                    }
                  }
                },
                itemCount: itemCount,
              )
            ],
          ),
        ),
      ],
    );
  }
}
