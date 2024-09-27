import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/assets_path.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: const AssetImage('assets/images/img_1.png'),
                width: MediaQuery.of(context).size.width, // Full width image
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Get your groceries\n with nectar',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  prefix: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/img_2.png',
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(width: 8),
                        const Text('+880'),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              _buildOrSizedBox(),
              const SizedBox(height: 50),
              _buildFbElevatedButton(
                  'Log In With Google', AssetsPath.google, Color(0xFF5383EC)),
              const SizedBox(height: 12),
              _buildFbElevatedButton(
                  'Log In With Facebook', AssetsPath.fb, Color(0xFF4A66AC)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOrSizedBox() {
    return const SizedBox(
      width: 343,
      height: 14,
      child: Row(
        children: [
          Expanded(
            child: Divider(color: Color(0xFFC2C2C2), thickness: 0.5),
          ),
          SizedBox(width: 8),
          Text(
            'Or connect with social media',
            style: TextStyle(
              color: Color(0xFF404040),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Divider(color: Color(0xFFC2C2C2), thickness: 0.5),
          ),
        ],
      ),
    );
  }

  Widget _buildFbElevatedButton(String text, String image, color) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Set background color to blue
        foregroundColor: Colors.white, // Set text and icon color to white
        side: const BorderSide(
            color: AppColors.themeColor, width: 1), // Add border
      ),
      onPressed: () {},
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 12,
        children: [
          Image.asset(
            image,
            height: 20,
            color:
                Colors.white, // Ensures the image color matches the foreground
          ),
          Text(
            text,
            style:
                const TextStyle(color: Colors.white), // Text color set to white
          ),
        ],
      ),
    );
  }
}
