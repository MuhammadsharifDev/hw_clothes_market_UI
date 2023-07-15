import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_ui/home_page/package.dart';

import 'package:store_ui/home_page/widgets/gridview_item_widget.dart';
import 'package:store_ui/home_page/widgets/drawers.dart';
import 'package:store_ui/home_page/widgets/top_app.dart';
import 'package:store_ui/modern/home_item.dart';
import 'package:store_ui/utils/appColor.dart';
import 'package:store_ui/utils/appIcon.dart';
import 'package:store_ui/utils/appImage.dart';

import '../utils/appIcon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: Drawers(),


      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 55,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    _scaffoldKey.currentState!.openDrawer();
                  },
                  child: CircleAvatar(
                    backgroundColor: AppColor.C_F5F6FA,
                    child: SvgPicture.asset(
                      AppIcon.drawerIcon2,
                      width: 35,
                      height: 35,
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: CircleAvatar(
                    backgroundColor: AppColor.C_F5F6FA,
                    child: SvgPicture.asset(
                      AppIcon.bag,
                      width: 35,
                      height: 35,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text(
                  'Hemendra',
                  style: TextStyle(
                    color: AppColor.C_1D1E20,
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Text(
                  'Welcome to Laza',
                  style: TextStyle(
                    color: AppColor.C_8F959E,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            TopApp(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Choose Brand',
                  style: TextStyle(
                    color: AppColor.C_1D1E20,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'View All',
                    style: TextStyle(
                        color: AppColor.C_8F959E,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 55,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ListViewItem.listVItem.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 50,
                      width: 115,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.C_F5F6FA,
                      ),
                      child: Row(
                        children: [
                          ListViewItem.listVItem[index].icon3,
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            ListViewItem.listVItem[index].itme1,
                            style: const TextStyle(
                                color: AppColor.C_1D1E20,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'New Arrial',
                  style: TextStyle(
                    color: AppColor.C_1D1E20,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'View All',
                    style: TextStyle(
                        color: AppColor.C_8F959E,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 2.5 / 4.5,
                ),
                physics: BouncingScrollPhysics(),
                itemCount: HomeItem.items.length,
                itemBuilder: (BuildContext context, int index) =>
                    GridVieweItem(item: HomeItem.items[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
