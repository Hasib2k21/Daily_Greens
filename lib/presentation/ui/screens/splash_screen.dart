
import 'package:daily_greens/presentation/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _movetoNextScreen();
  }

  Future<void> _movetoNextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
   // Get.off(() => const BottomNavScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themeColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Row(
               children: [
                 Column(
                   children: [
                 SvgPicture.asset('assets/images/carrot.svg',height: 100,width: 100,)
                   ],
                 ),
                 SizedBox(width: 20,),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('nectar',style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.white,fontSize: 60,letterSpacing: 2.2),),
                     Text('online groceriet',style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white,letterSpacing: 5.50),)
                   ],
                 )
               ],
             )
            ],
          ),
        ),
      ),
    );
  }
}
