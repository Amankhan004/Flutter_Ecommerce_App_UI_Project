import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/Home_View/home_view.dart';
import 'package:ecommerce_app_complete_ui_project/utils/App_colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainMenuView extends StatefulWidget {
  const MainMenuView({super.key});

  @override
  State<MainMenuView> createState() => _MainMenuViewState();
}

class _MainMenuViewState extends State<MainMenuView> {
  int index = 0; //for bottom navigation bar
  var currentPage = 0;
  final _controller = NotchBottomBarController(index: 0);
  final _pageController = PageController(initialPage: 0);
  List page = const [
    HomeView(),
    // CategoryView(),
    // FavoriteView(),
    // MoreView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      bottomNavigationBar: AnimatedNotchBottomBar(
        showShadow: false,
        removeMargins: true,
        notchBottomBarController: _controller,
        durationInMilliSeconds: 300,
        showLabel: true,
        itemLabelStyle: const TextStyle(
            color: Colors.black,
            fontSize: 12.0,
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w500),
        notchColor: AppColors.textColor.withOpacity(0.8),
        onTap: (index) {
          setState(() {
            _pageController.jumpToPage(index);
            currentPage = index;
          });
        },
        bottomBarItems: [
          //Home Screen
          BottomBarItem(
            inActiveItem: SvgPicture.asset(
              "Assets/App_images/HeartUnselected.svg",
            ),
            activeItem: SvgPicture.asset(
              "Assets/App_images/homeSelected.svg",
            ),
            itemLabel: 'Home',
          ),
          //Category Screen
          BottomBarItem(
            inActiveItem: SvgPicture.asset(
              "Assets/App_images/CategoryUnselected.svg",
            ),
            activeItem: SvgPicture.asset(
              "Assets/App_images/CategorySelected.svg",
            ),
            itemLabel: 'Category',
          ),
          //Favorite Screen
          BottomBarItem(
            inActiveItem: SvgPicture.asset(
              "Assets/App_images/homeUnselected.svg",
            ),
            activeItem: SvgPicture.asset(
              "Assets/App_images/HeartSelected.svg",
            ),
            itemLabel: 'Favorite',
          ),
          //Category Screen
          BottomBarItem(
            inActiveItem: SvgPicture.asset(
              "Assets/App_images/moreUnselected.svg",
            ),
            activeItem: SvgPicture.asset(
              "Assets/App_images/moreSelected.svg",
            ),
            itemLabel: 'More',
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
