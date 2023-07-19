import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_ui/main_page/bag_page/bag.dart';
import 'package:store_ui/main_page/home_page/homepage.dart';
import 'package:store_ui/main_page/like_page/like.dart';
import 'package:store_ui/main_page/wallet_page/wallet.dart';
import 'package:store_ui/utils/appColor.dart';
import 'package:store_ui/utils/appIcon.dart';

class ButtomNagPage extends StatefulWidget {
  const ButtomNagPage({super.key});

  @override
  State<ButtomNagPage> createState() => _ButtomNagPageState();
}

class _ButtomNagPageState extends State<ButtomNagPage> {
  BottomMenu _bottomMenu=BottomMenu.home;
  void _selectedTab(BottomMenu tab){
    setState(() {
      _bottomMenu=tab;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _bottomMenu.index,

         children:const  [
           HomeScreen(),
           LikePage(),
           BagPage(),
           WalletPage(),
         ],
      ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _bottomMenu.index,
              
              onTap: (index){
                _selectedTab(BottomMenu.values[index]);
              },

              items: [
                BottomNavigationBarItem(icon: SvgPicture.asset(AppIcon.home),label: 'Home'),
                BottomNavigationBarItem(icon: SvgPicture.asset(AppIcon.heart_2),label:'Like' ),
                BottomNavigationBarItem(icon: SvgPicture.asset(AppIcon.bag),label: 'Bag' ),
                BottomNavigationBarItem(icon: SvgPicture.asset(AppIcon.walletIcon),label: 'Wallet' ),
              ],
              unselectedItemColor: Colors.grey,
              selectedItemColor:AppColor.C_9775FA,
            ),
    );
  }
}
enum BottomMenu{
  home,
  like,
  bag,
  wallet,

}
