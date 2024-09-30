import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  final String label;
  final bool initialValue;
  final ValueChanged<bool?>? onChanged;

  const CustomCheckbox({
    Key? key,
    required this.label,
    this.initialValue = false,
    this.onChanged,
  }) : super(key: key);

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool? isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.5,
          child: Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value;
              });
              if (widget.onChanged != null) {
                widget.onChanged!(value);
              }
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5), // Rounded corners
            ),
            side: BorderSide(color: Colors.black),
            fillColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.selected)) {
                return Colors.green;
              }
              return Colors.white;
            }),
            checkColor: Colors.white,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          widget.label,
          style: TextStyle(
            color: isChecked! ? Colors.green : Colors.black,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
