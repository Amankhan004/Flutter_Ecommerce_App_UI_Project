import 'package:ecommerce_app_complete_ui_project/Screens/Home_View/widgets/drop_down.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/Home_View/widgets/offers_container.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/Home_View/widgets/recommended_view.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/Home_View/widgets/search_bar.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/bottom_navbar/bottom_navbar.dart';
// import 'package:ecommerce_app_complete_ui_project/Screens/bottom_navbar/bottom_navbar.dart';
import 'package:ecommerce_app_complete_ui_project/resources/app_Icons.dart';
import 'package:ecommerce_app_complete_ui_project/utils/App_colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: AnnotatedRegion(
      value: const SystemUiOverlayStyle(statusBarColor: AppColors.lightBlue),
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 252,
              color: AppColors.lightBlue,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 15, 10),
                child: Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Hey, Aman",
                                style: GoogleFonts.manrope(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600)),
                            const Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(AppIcons.cartIcon)),
                          ],
                        ),
                        const SearchBarWidget(),
                        const DropDownButton()
                      ],
                    )),
              ),
            ),
            const OffersContainers(),
            Padding(
              padding: const EdgeInsets.only(right: 120),
              child: Text(
                'Recommended',
                style: GoogleFonts.manrope(
                  color: const Color(0xFF1E222B),
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  height: 1.27,
                ),
              ),
            ),
           const Recommended(),
            Padding(
              padding: const EdgeInsets.only(right: 120),
              child: Text(
                'Deals on Fruits & Tea',
                style: GoogleFonts.manrope(
                  color: const Color(0xFF1E222B),
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  height: 1.27,
                ),
              ),
            ),
          const  Recommended(),
          
          ],
        ),
      ),



      bottomNavigationBar:const MainMenuView(),

      
      //  bottomNavigationBar: const MainMenuView(),
      ),
    ));
  }
}
