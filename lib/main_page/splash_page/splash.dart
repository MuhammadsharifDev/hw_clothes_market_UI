import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_ui/main_page/main_page_first.dart';
import 'package:store_ui/utils/appColor.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState(){
    super.initState();
    Future.delayed(
        const Duration(seconds: 3)).then((value) =>
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage(),),),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.C_9775FA,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
             Center(
               child: Image.asset('assets/png_picture/splash.png'),
             ),
            Text('STYLISH',style: TextStyle(fontSize: 50,fontWeight: FontWeight.w400,color: Colors.white),),
    Text('Find Your Style',style: GoogleFonts.sacramento(fontSize: 40,fontWeight: FontWeight.w400,color: Colors.white),),
        ],
      ),
    );
  }
}
