import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

import '../data/stutras.dart';

class FlashCard extends StatelessWidget {
  final int index;
  const FlashCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      front: Card(
        color: Color(0xff4A90E2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            stutras[index]['sutra']!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      back: Card(
        color: Color(0xff3F51B5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            stutras[index]['meaning']!,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
