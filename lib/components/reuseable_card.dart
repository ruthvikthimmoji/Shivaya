import 'package:flutter/material.dart';

class ReUsableCard extends StatelessWidget {
  const ReUsableCard({
    super.key,
    required this.colour,
    required this.cardChild,
    required this.onPress,
  });

  final Color colour;
  final Widget cardChild;
  final VoidCallback? onPress; // Change from Function to VoidCallback?

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress, // This now matches the expected type
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: colour,
        ),
      ),
    );
  }
}
