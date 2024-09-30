import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false, // To remove back arrow if needed
      elevation: 0,
      backgroundColor: Colors.white,
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(left: 20, right: 16, top: 20), // Adjust padding as needed
        child: Row(
          children: [
            // Profile Image
            CircleAvatar(
              radius: 30, // Adjust the size of the image
              backgroundImage: AssetImage('assets/images/img_4.png'), // Your image path
            ),
            const SizedBox(width: 16),
            // User Info Column
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Afsar Hossen',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // Add edit functionality
                        },
                        icon: const Icon(Icons.edit, color: Colors.green),
                      ),
                    ],
                  ),
                  const Text(
                    'lmshuvo97@gmail.com',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}