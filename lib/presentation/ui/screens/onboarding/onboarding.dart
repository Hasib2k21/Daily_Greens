import 'package:daily_greens/presentation/ui/screens/auth/log_in_screen.dart';
import 'package:daily_greens/presentation/ui/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: const Image(
                image: AssetImage('assets/images/img.png'), fit: BoxFit.cover),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  SvgPicture.asset(
                    AssetsPath.appLogo,
                    height: 80,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Welcome \n to our store',
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        ?.copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Get your groceries is as fast as one hour',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(onPressed: () {
                    Get.to(()=>const LogInScreen());
                  }, child: const Text('Get Started')),
                  const SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
