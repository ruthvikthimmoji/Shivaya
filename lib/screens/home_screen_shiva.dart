import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart' hide CarouselController;
import 'package:shivaya/widgets/flash_card_shiva.dart';

import '../data/stutras.dart';

class HomeScreenShiva extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'SHIVA',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        backgroundColor: Colors.transparent, // Semi-transparent AppBar
        elevation: 0,
      ),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg.jpg', // Make sure this image is in your assets
              fit: BoxFit.cover,
            ),
          ),
          // Foreground Content
          Center(
            child: CarouselSlider.builder(
              itemCount: shivaStutras.length,
              options: CarouselOptions(
                height: 500.0,
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
              ),
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return FlashCardShiva(index: index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
