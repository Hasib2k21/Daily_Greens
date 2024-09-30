import 'package:flutter/material.dart';

import '../../widget/explore/custom_checkbox.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Filters")),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height*1,
        width: MediaQuery.of(context).size.width*1,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: const Color(0xFFF2F3F2)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Categories",style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: 16,),
                CustomCheckbox(label: 'Eggs', initialValue: true, onChanged: (val) {}),
                CustomCheckbox(label: 'Noodles & Pasta', onChanged: (val) {}),
                CustomCheckbox(label: 'Chips & Crisps', onChanged: (val) {}),
                CustomCheckbox(label: 'Fast Food', onChanged: (val) {}),
                const SizedBox(height: 16),
                Text("Brand",style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: 16,),
                CustomCheckbox(label: 'Individual Collection', initialValue: true, onChanged: (val) {}),
                CustomCheckbox(label: 'Cocola', onChanged: (val) {}),
                CustomCheckbox(label: 'Ifad', onChanged: (val) {}),
                CustomCheckbox(label: 'Kazi Farmaz', onChanged: (val) {}),
                const Spacer(),
                ElevatedButton(onPressed: (){}, child: const Text('Apply Filter'))
              ],
            ),
          ),
      )
    );
  }
}








