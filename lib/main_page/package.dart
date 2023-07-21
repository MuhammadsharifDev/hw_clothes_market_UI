import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/appColor.dart';
import '../utils/appIcon.dart';

class Drawers extends StatelessWidget {
  const Drawers({super.key});

  @override
  Widget build(BuildContext context) {
    final data=ModalRoute.of(context)?.settings.arguments as Map;
    return ListView(
      children: [
        DrawerHeader(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: CircleAvatar(
                    backgroundColor: AppColor.C_F5F6FA,
                    child: SvgPicture.asset(
                      AppIcon.drawerIcon2,
                      width: 45,
                      height: 45,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage:
                      AssetImage('assets/png_picture/user_profile.png'),
                      radius: 28,
                    ),
          SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                          data['name'],
                          style:const  TextStyle(
                            color: AppColor.C_1D1E20,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Text('Verified Profile'),
                            SizedBox(width: 5,),
                            SvgPicture.asset(AppIcon.pitichka),
                          ],
                        ),
                        Text("ID:${data['password']}",style: TextStyle(color: Colors.grey),),
                      ],
                    ),


                  ],
                ),
              ],
            ),
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(AppIcon.info_Icon),
          title: const Text(
            'Account Information',
            style: TextStyle(color: AppColor.C_1D1E20, fontSize: 15),
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(AppIcon.lockIcon),
          title: const Text(
            'Password',
            style: TextStyle(color: AppColor.C_1D1E20, fontSize: 15),
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(AppIcon.bag),
          title: const Text(
            'Order',
            style: TextStyle(color: AppColor.C_1D1E20, fontSize: 15),
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(AppIcon.walletIcon),
          title: const Text(
            'My Cards',
            style: TextStyle(color: AppColor.C_1D1E20, fontSize: 15),
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(AppIcon.heart_2),
          title: const Text(
            'Wishlist',
            style: TextStyle(color: AppColor.C_1D1E20, fontSize: 15),
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(AppIcon.settingIcon),
          title: const Text(
            'Setting',
            style: TextStyle(color: AppColor.C_1D1E20, fontSize: 15),
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        ListTile(
          leading: SvgPicture.asset(AppIcon.logOut),
          title: const Text('Logout',style: TextStyle(
            fontSize: 15,fontWeight: FontWeight.w500,
            color: Colors.red,
          ),
          ),
          onTap: (){
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
