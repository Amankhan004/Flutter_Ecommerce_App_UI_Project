import 'package:ecommerce_app_complete_ui_project/Data/main_data/offer_main.dart';
import 'package:ecommerce_app_complete_ui_project/utils/App_colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OffersContainersTwo extends StatelessWidget {
  const OffersContainersTwo({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaWidth = MediaQuery.of(context).size.width;

    return SizedBox(
        height: 205,
        width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: 16,
            left: 14,
            child: SvgPicture.asset('Assets/App_images/home_images/Ellipse 1547.svg'),
          ),
          Positioned(
            bottom: 7,
            left: mediaWidth * 0.46,
            child: SvgPicture.asset('Assets/App_images/home_images/Ellipse 1548.svg'),
          ),
          Positioned(
            bottom: 0,
            left: mediaWidth * 0.31,
            child: SvgPicture.asset('Assets/App_images/home_images/Ellipse 1546.svg'),
          ),
          Positioned(
            right: 8,
            top: 90,
            child: SvgPicture.asset('Assets/App_images/home_images/Ellipse 1549.svg'),
          ),

        Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 190,
        width: double.infinity,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: cardDataListTwo.length,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final cardData = cardDataListTwo[index];
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
                                  style:const TextStyle(
                                    fontSize: 25,
                                    fontWeight:  FontWeight.bold,
                                    color:  Colors.black,
                                  ),
                                ),
                              
                              ],
                            ),
                          ),
                          Text(
                            cardData.description,
                            style:const TextStyle(
                              fontSize: 16,
                              color: Colors.black, // Set text color conditionally
                              fontWeight: FontWeight.normal, // Set font weight conditionally
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
    )
    ],
      ),
    );
  }
}
