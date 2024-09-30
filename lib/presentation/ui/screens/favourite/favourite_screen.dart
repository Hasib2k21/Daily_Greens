import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite', textAlign: TextAlign.center),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/apple.png', height: 80, width: 80),
                    const SizedBox(width: 20),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Sprite Can', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                          SizedBox(height: 5),
                          Text('325ml, Price', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    const Spacer(),
                   const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          Text('\$1.50', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          SizedBox(width: 10),
                          Icon(Icons.arrow_forward_ios, size: 16),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              ElevatedButton(onPressed: (){}, child: Text('Add All To Cart'))
            ],
          ),
        ),
      ),
    );
  }
}
