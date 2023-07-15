import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_ui/modern/home_item.dart';
import 'package:store_ui/utils/appColor.dart';
import 'package:store_ui/utils/appIcon.dart';
import 'package:store_ui/utils/appImage.dart';

class GridVieweItem extends StatefulWidget {
  final HomeItem item;

  const GridVieweItem({super.key, required this.item});

  @override
  State<GridVieweItem> createState() => _GridVieweItemState();
}

class _GridVieweItemState extends State<GridVieweItem> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(widget.item.imageItem),
              Positioned(
                right: 4,
                  top: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.1),
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            widget.item.isLike=!widget.item.isLike;
                          });
                        },
                        child: Icon(widget.item.isLike?Icons.favorite_border:Icons.favorite,
                        color: widget.item.isLike?Colors.grey:Colors.red,),
                      ),
                    ),
                  ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            widget.item.firma,
            style: const TextStyle(
                color: AppColor.C_1D1E20,
                fontWeight: FontWeight.w500,
                fontSize: 15.4),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            widget.item.coast,
            style: const TextStyle(
              color: AppColor.C_1D1E20,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
