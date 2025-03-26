import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import '../data/stutras.dart';

class FlashCardVishnu extends StatelessWidget {
  final int index;
  const FlashCardVishnu({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      front: Card(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            vishnuStutras[index]['sutra']!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      back: Card(
        color: Colors.grey.shade600,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            vishnuStutras[index]['meaning']!,
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
