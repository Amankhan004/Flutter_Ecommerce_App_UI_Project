import 'package:ecommerce_app_complete_ui_project/Data/main_data/offer_main.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app_complete_ui_project/utils/App_colors/colors.dart';

class OffersContainers extends StatelessWidget {
  const OffersContainers({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 170,
        width: double.infinity,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: cardDataList.length,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final cardData = cardDataList[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: cardData.cardWidth,
                height: cardData.cardHeight,
                decoration: BoxDecoration(
                  color: cardData.backgroundColor ?? AppColors.darkYellow,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    if (index == 0 && cardData.imageAsset != null)
                      Image(
                        height: 170,
                        width: 150,
                        image: AssetImage(cardData.imageAsset!),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: cardData.title,
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: index == 0 ? FontWeight.normal : FontWeight.bold,
                                    color: index == 0 ? Colors.white : Colors.black,
                                  ),
                                ),
                                if (index == 0) // Add discount for the first card
                                 const TextSpan(
                                    text: " \n10% OFF",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Text(
                            cardData.description,
                            style: TextStyle(
                              fontSize: 16,
                              color: index == 0 ? Colors.white : Colors.black, // Set text color conditionally
                              fontWeight: index == 0 ? FontWeight.normal : FontWeight.normal, // Set font weight conditionally
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
