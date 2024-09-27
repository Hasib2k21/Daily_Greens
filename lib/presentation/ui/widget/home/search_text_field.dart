import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController textEditingController;

  const SearchTextField({
    super.key,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade200,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        filled: true,
        hintText: 'Search Store',
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15), // Circular border radius 15
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15), // Circular border radius 15
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15), // Circular border radius 15
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
