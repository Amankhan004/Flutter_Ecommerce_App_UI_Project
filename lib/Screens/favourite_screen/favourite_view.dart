import 'package:ecommerce_app_complete_ui_project/Screens/favourite_screen/widgets/favourite_items.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/favourite_screen/widgets/favourites.dart';
import 'package:ecommerce_app_complete_ui_project/resources/app_icons.dart';
import 'package:ecommerce_app_complete_ui_project/utils/App_colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: AnnotatedRegion(
        value: const SystemUiOverlayStyle(statusBarColor: AppColors.lightBlue),
        child: Scaffold(
          body: Column(
            children: [
              Container(
                height: 252,
                color: AppColors.lightBlue,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 15, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Hey, Aman",
                            style: GoogleFonts.manrope(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 100,
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "Assets/App_images/Search.svg",
                                ),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: SvgPicture.asset(AppIcons.cartIcon),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 30),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Yours\n',
                                style: TextStyle(
                                  color: Color(0xFFFAFAFC),
                                  fontSize: 47,
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.w300,
                                  height: 1.5,
                                ),
                              ),
                              TextSpan(
                                text: 'Favourite Items',
                                style: TextStyle(
                                  color: Color(0xFFFAFAFC),
                                  fontSize: 45,
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.w800,
                                  height: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
          FavouriteItems(favoriteItems: favoriteItems)
            ],
          ),
        ),
      ),
    );
  }
}

  
