import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_ui/utils/appIcon.dart';
import 'package:store_ui/utils/appImage.dart';

import '../utils/appColor.dart';

class ListViewItem {
  String itme1;
  dynamic icon3;

  ListViewItem({required this.itme1, required this.icon3});

  static List<ListViewItem> listVItem = [
    ListViewItem(
      itme1: 'Adidas',
      icon3: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.C_FEFEFE,
        ),
        child: SvgPicture.asset(AppIcon.adidasIcon),
      ),
    ),
    ListViewItem(
      itme1: 'Nike',
      icon3: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.C_FEFEFE,
        ),
        child: SvgPicture.asset(AppIcon.nikeIcon),
      ),
    ),
    ListViewItem(
      itme1: 'Fila',
      icon3: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.C_FEFEFE,
        ),
        child: SvgPicture.asset(AppIcon.filaIcon),
      ),
    ),
    ListViewItem(
      itme1: 'Fila',
      icon3: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.C_FEFEFE,
        ),
        child: SvgPicture.asset(AppIcon.adidasIcon),
      ),
    ),
  ];
}

class HomeItem {
  String imageItem;
  String firma;

  String coast;
  bool isLike;

  HomeItem(
      {required this.imageItem,
      required this.firma,
      required this.coast,
      required this.isLike});

  static List<HomeItem> items = [
    HomeItem(
        imageItem:AppImages.picture_6,
        firma: 'Nike Sportswear Club \nFleece',
        coast: '\$99',
        isLike: false),
    HomeItem(
        imageItem:AppImages.picture_5,
        firma: 'Trail Running Jacket Nike Windrunner',
        coast: '\$80',
        isLike: false),
    HomeItem(
        imageItem:AppImages.picture_4,
        firma: 'Trail Running Jacket Nike Windrunner',
        coast: '\$80',
        isLike: false),
    HomeItem(
        imageItem:AppImages.picture_3,
        firma: 'Trail Running Jacket Nike Windrunner',
        coast: '\$80',
        isLike: false),
    HomeItem(
        imageItem:AppImages.picture_2,
        firma: 'Trail Running Jacket Nike Windrunner',
        coast: '\$80',
        isLike: false),
    HomeItem(
        imageItem:AppImages.picture_1,
        firma: 'Trail Running Jacket Nike Windrunner',
        coast: '\$80',
        isLike: false),
  ];
}
