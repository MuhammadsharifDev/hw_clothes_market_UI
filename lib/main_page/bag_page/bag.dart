import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_ui/main_page/home_page/homepage.dart';
import 'package:store_ui/modern/home_item.dart';
import 'package:store_ui/utils/appColor.dart';
import 'package:store_ui/utils/appIcon.dart';
import 'package:store_ui/utils/appImage.dart';

class BagPage extends StatefulWidget {

  const BagPage({super.key,});

  @override
  State<BagPage> createState() => _BagPageState();
}

class _BagPageState extends State<BagPage> {
  final _pageController=PageController();
  List<String>item=['S','M','XL','2XL'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
              },
              icon: Icon(Icons.arrow_back_ios_new),
            ),
            actions: [
              CircleAvatar(
                radius: 20,
                backgroundColor: AppColor.C_FEFEFE,
                child: SvgPicture.asset(AppIcon.bag),
              ),
            ],
            expandedHeight: 450,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background:
              PageView(
                controller: _pageController,
                children: [
                  Image.asset(
                    'assets/png_picture/picture_5.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/png_picture/nike2.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/png_picture/nike3.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset('assets/png_picture/nike4.jpg',fit: BoxFit.cover,),

                ],
              ),


            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Men's Printed Pullover Hoodie",
                        style: TextStyle(color: AppColor.C_8F959E),
                      ),
                      Text(
                        "Price",
                        style: TextStyle(color: AppColor.C_8F959E),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Nike Club Fleece",
                        style: TextStyle(
                            color: AppColor.C_1D1E20,
                            fontWeight: FontWeight.w600,
                            fontSize: 22),
                      ),
                      Text(
                        "\$99",
                        style: TextStyle(
                            color: AppColor.C_1D1E20,
                            fontWeight: FontWeight.w600,
                            fontSize: 22),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  SizedBox(
                    height: 77,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width:80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset(ImagesNike.nikeItem[index].image),
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(width: 10,),
                      itemCount: ImagesNike.nikeItem.length,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Size',
                        style: TextStyle(
                            color: AppColor.C_1D1E20,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Size Guide',
                        style: TextStyle(
                            color: AppColor.C_8F959E,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 77,
                    child: SizedBox(
                      height: 80,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: item.length,
                        itemBuilder:(context, index) => Container(
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.C_F5F6FA,
                          ),
                          child: Center(child: Text(item[index])),
                        ), separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 10,);
                      },
                      ),
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(right: 250,top: 20),
                    child: const Text('Description',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17,color: AppColor.C_1D1E20),),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text('The Nike Throwback Pullover Hoodie is made \nfrom premium French terry fabric that blends a \nperformance feel with Read More..'),
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
class ImagesNike{
  String image;
  ImagesNike({required this.image});

  static List<ImagesNike> nikeItem=[
    ImagesNike(image: AppImages.nike1),
    ImagesNike(image: AppImages.nike2),
    ImagesNike(image: AppImages.nike3),
    ImagesNike(image: AppImages.nike4),

  ];
}