import 'package:flora/core/colors/colors.dart';
import 'package:flutter/material.dart';

class ChoiceChipsWidget extends StatelessWidget {
  const ChoiceChipsWidget({
    super.key,
    required this.choicechipNumber,
    required this.title,
    required this.onSelected,
    required this.isSelected,
  });

  final int choicechipNumber;
  final String title;
  final VoidCallback onSelected;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      showCheckmark: false,
      backgroundColor: choiceChipunselectedColor,
      label: Text(
        title,
        style: TextStyle(
          color: isSelected ? colorWhite : colorGrey,
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
      selected: isSelected,
      onSelected: (_) => onSelected(),
      selectedColor: colorApp,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.transparent),
      ),
    );
  }
}
