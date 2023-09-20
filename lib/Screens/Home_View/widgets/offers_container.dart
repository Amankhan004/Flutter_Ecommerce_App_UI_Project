import 'package:ecommerce_app_complete_ui_project/Data/offer_main.dart';
import 'package:ecommerce_app_complete_ui_project/resources/app_textstyles.dart';
import 'package:ecommerce_app_complete_ui_project/utils/App_colors/colors.dart';
import 'package:flutter/material.dart';



class OffersContainers extends StatelessWidget {
  const OffersContainers({super.key});

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
                    if (cardData.imageAsset != null)
                      Image(
                        height: 170,
                        width: 150,
                        image: AssetImage(cardData.imageAsset!),
                      ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          cardData.title,
                          style: CustomCardStyles.titleTextStyle,
                        ),
                       const Text(
                        "% OFF"
                        ),
                        Text(
                          cardData.description,
                          style: CustomCardStyles.descriptionTextStyle,
                        ),
                      ],
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
