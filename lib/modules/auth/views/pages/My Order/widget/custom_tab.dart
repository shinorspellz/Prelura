import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final String label;
  final bool isSelected;
  final Function onTap;

  const CustomTab({super.key, 
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected
                ? Colors.teal
                : Colors.transparent, // Change color based on selected state
            width: 2, // Border width for selected tab
          ),
          borderRadius: BorderRadius.circular(8), // Rounded corners
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected
                ? Colors.teal
                : Colors.grey, // Text color changes when selected
            overflow: TextOverflow.visible,
          ),
        ),
      ),
    );
  }
}
