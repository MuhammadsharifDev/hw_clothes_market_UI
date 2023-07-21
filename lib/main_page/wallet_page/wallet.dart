import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     body: CustomScrollView(
       slivers: [
         SliverAppBar(
           expandedHeight: 400,
           pinned: true,
           flexibleSpace: FlexibleSpaceBar(
             background: Stack(
               fit: StackFit.expand,
               children: [
                 Image.asset(
                   'assets/png_picture/tower.jpg',
                   fit: BoxFit.cover,
                 ),
               ],
             ),
           ),
         ),
         SliverPadding(
           padding: EdgeInsets.all(10.0),
             sliver: SliverGrid(
             delegate:SliverChildBuilderDelegate(
               childCount: 10,
               (context, index) => Container(

                 color: Colors.blue,
               ),
             ),
             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2,
               mainAxisSpacing: 10,
               crossAxisSpacing: 10,
               childAspectRatio: 2.5/3.5,
             ),

           ),
         )
       ],
     ),
    );
  }
}