import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store_ui/utils/appColor.dart';

import '../../utils/appIcon.dart';

class TopApp extends StatelessWidget {
  const TopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        SizedBox(
          height: 45,
          width: 285,
          child: TextField(
            decoration: InputDecoration(

              border: OutlineInputBorder(

                borderRadius: BorderRadius.circular(10),

              ),
              fillColor: AppColor.C_F5F6FA,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                child: SvgPicture.asset(AppIcon.searchIcon,),
              ),
              labelText: 'Search',

            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColor.C_9775FA,


          ),
          width: 50,
          height: 50,
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: SvgPicture.asset(AppIcon.voiceIcon,

            ),
          ),
        ),
      ],
    );
  }
}
