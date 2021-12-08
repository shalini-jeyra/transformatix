import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:transformatix_task/styles/styles.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({Key? key}) : super(key: key);

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 170,
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  constraints: const BoxConstraints(minHeight: 120, minWidth: 100),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/2.png',
                        ),
                        fit: BoxFit.contain,
                      ),
                      color: AppColors.primary,
                      border: Border.all(
                          color: const Color.fromARGB(255, 192, 192, 192)),
                      borderRadius: BorderRadius.circular(32)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(32)),
                    ),
                  ),
                ),
                SizedBox(width: 60,),
                 Container(
              constraints: const BoxConstraints(minHeight: 120, minWidth: 100),
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/8.png',
                    ),
                    fit: BoxFit.contain,
                  ),
                  color: AppColors.primary,
                  border: Border.all(
                      color: const Color.fromARGB(255, 192, 192, 192)),
                  borderRadius: BorderRadius.circular(32)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(32)),
                ),
              ),
                      ),
              ],
            ),
             
            Positioned(
             left: 50,
             bottom: 0,
              child: Container(
                constraints: const BoxConstraints(maxHeight: 170, maxWidth: 140),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 247, 149, 47),
                    border:
                        Border.all(color: const Color.fromARGB(255, 192, 192, 192)),
                    borderRadius: BorderRadius.circular(32)),
                child: Center(
                  child: Image.asset(
                    'assets/1.png',
                    fit: BoxFit.contain,
                    height: 90,
                    width: 90,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
