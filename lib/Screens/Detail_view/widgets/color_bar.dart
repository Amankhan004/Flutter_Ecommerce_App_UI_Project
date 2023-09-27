import 'package:ecommerce_app_complete_ui_project/Screens/Detail_view/widgets/add_to_cart_button.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app_complete_ui_project/utils/App_colors/colors.dart';

class CustomColorBar extends StatefulWidget {
  final Function(Color) onColorChanged; 

  const CustomColorBar({Key? key, required this.onColorChanged}) : super(key: key);

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
                const  Spacer(),
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
                const  SizedBox(width: 8),
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
                      child: Center(
                        child: Text(
                          itemCount.toString(),
                          style:const TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                const  SizedBox(width: 8),
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
                const  SizedBox(width: 15),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 40, 0, 36),
          width: double.infinity,
          decoration:const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Column(
            children: [
              AddToCartButton(buttonText: 'Add To Cart', itemCount: itemCount, buttonColor: selectedColor),
            ],
          ),
        ),
      ],
    );
  }
}
