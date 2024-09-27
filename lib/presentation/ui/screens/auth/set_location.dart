import 'package:flutter/material.dart';

class SetLocation extends StatefulWidget {
  const SetLocation({super.key});

  @override
  State<SetLocation> createState() => _SetLocationState();
}

class _SetLocationState extends State<SetLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {}, child: const Icon(Icons.arrow_back_ios_new_sharp)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/img_5.png',
                      height: 200,
                    ),
                    const SizedBox(height: 30),
                    Text(
                      'Select Your Location',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Switch on your location to stay in tune with what’s happening in your area',
                      style: Theme.of(context).textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  Text(
                    'Your Zone',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.grey.shade600),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Zone',
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Your Area',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.grey.shade600),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Types of Your area',
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                      height: 60,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Submit')))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
