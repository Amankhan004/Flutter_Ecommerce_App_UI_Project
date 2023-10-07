import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/Home_View/home_view.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/category_View/category_view.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/favourite_screen/favourite_view.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/add_to_card/add_to_card_view.dart';
import 'package:ecommerce_app_complete_ui_project/utils/App_colors/colors.dart';

class MainMenuView extends StatefulWidget {
  const MainMenuView({Key? key}) : super(key: key);

  @override
  _MainMenuViewState createState() => _MainMenuViewState();
}

class _MainMenuViewState extends State<MainMenuView> {
  int currentIndex = 0;
  final pages = [
    HomeView(),
    MyCategoryView(),
    FavouriteView(),
    AddToCartView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar:  currentIndex != 3   // Hide the bottom navigation bar on the AddToCartView screen
          ? Container(
              color: AppColors.lightBlue,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: GNav(
                  backgroundColor: AppColors.lightBlue,
                  color: AppColors.white,
                  activeColor: AppColors.lightBlue,
                  tabBackgroundColor: AppColors.white,
                  gap: 10,
                  padding: EdgeInsets.all(12),
                  onTabChange: (int newindex) {
                    setState(() {
                      currentIndex = newindex;
                    });
                  },
                  tabs: [
                    GButton(icon: Icons.home, text: "Home"),
                    GButton(icon: Icons.category, text: "Category"),
                    GButton(icon: Icons.favorite_outline, text: "Favourite"),
                    GButton(icon: Icons.more, text: "More"),
                  ],
                ),
              ),
            )
          : null,
    );
  }
}
