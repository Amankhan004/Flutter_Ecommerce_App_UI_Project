import 'package:ecommerce_app_complete_ui_project/Screens/Home_View/home_view.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/category_View/category_view.dart';
// import 'package:ecommerce_app_complete_ui_project/Screens/category_View/category_view.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/randomscreens/screen3.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/randomscreens/screen4.dart';
import 'package:ecommerce_app_complete_ui_project/utils/App_colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainMenuView extends StatefulWidget {
  const MainMenuView({super.key});

  @override
  State<MainMenuView> createState() => _MainMenuViewState();
}

class _MainMenuViewState extends State<MainMenuView> {
 


   int currentIndex = 0;
  final page  =const [

    HomeView(),
    MyCategoryView(),
    ScreenThree(),
    ScreenFour()
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  page[currentIndex],
      bottomNavigationBar: Container(
            color: AppColors.lightBlue,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: GNav(
                backgroundColor: AppColors.lightBlue,
                color: AppColors.white,
                activeColor: AppColors.lightBlue,
                tabBackgroundColor: AppColors.white,
                gap: 10,
                padding:const EdgeInsets.all(12),
                 onTabChange: (int newindex) {
              setState(() {
                currentIndex = newindex;
              });
            },
                tabs:const [
                  GButton(icon: Icons.home, text: "Home"),
                  GButton(icon: Icons.category, text: "Category"),
                  GButton(icon: Icons.favorite_outline, text: "Favourite"),
                  GButton(icon: Icons.more, text: "More"),
                ],
              ),
            ),
          ),
       

    );


  }
}


 