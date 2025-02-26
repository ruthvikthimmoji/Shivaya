import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart' hide CarouselController;
import 'package:shivaya/widgets/flash_card.dart';

import '../data/stutras.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7B7B7B),
      appBar: AppBar(
        title: const Text(
          'SHIVAYA',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        backgroundColor: Color(0xff7B7B7B),
      ),
      body: Center(
        child: CarouselSlider.builder(
          itemCount: stutras.length,
          options: CarouselOptions(
            height: 500.0,
            enableInfiniteScroll: true,
            enlargeCenterPage: true,
            autoPlay: false,
            autoPlayInterval: const Duration(seconds: 2),
          ),
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return FlashCard(index: index);
          },
        ),
      ),
    );
  }
}
