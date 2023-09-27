import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDetailAppbar extends StatelessWidget {
  const CustomDetailAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding:const EdgeInsets.fromLTRB(14, 12, 14,0),

      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24)),
                    height: 48,
                    width: 48,
                    child: InkWell(
                        onTap: () {
                   Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back_ios_new_outlined))),
                Container(
                  padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white),
                  child: Row(
                    children: [
                     const Text(
                        "4.5",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                     const SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset(
                          "Assets/App_images/discription_detail_images/rating/Star.svg")
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
