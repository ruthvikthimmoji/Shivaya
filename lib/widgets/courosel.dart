import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../data/stutras.dart';

class CouroselCard extends StatelessWidget {
  final int index;
  const CouroselCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        CarouselSlider.builder(
          itemCount: courselStutras.length,
          options: CarouselOptions(
            height: 500.0,
            enableInfiniteScroll: true,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
          ),
          itemBuilder: (BuildContext context, int index, int realIndex) {
            final stutra = courselStutras[index]['sutra'] ??
                "No Sutra Found"; // Safely extract sutra
            final meaning =
                courselStutras[index]['meaning'] ?? "no meaning Found";

            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              color: Colors.white54,
              elevation: 8,
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          stutra,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                          ),
                        ),
                        Text(
                          meaning,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  )),
            );
          },
        ),
      ],
    ));
  }
}
