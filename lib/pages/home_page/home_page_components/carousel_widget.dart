import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:transformatix_task/styles/styles.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({ Key? key }) : super(key: key);

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  List<String> images=['assets/1.png','assets/2.png','assets/3.png','assets/4.png','assets/5.png','assets/6.png','assets/7.png','assets/8.png'];
 List<Widget> imageSliders=[];
 @override
  void initState() {
     imageSliders = images
    .map((item) =>  Container(
                  height: 170,
                  width: 140,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                   border: Border.all(color: const Color.fromARGB(255,192,192,192)),
                    borderRadius: BorderRadius.circular(32)),
                    child: Image.asset(item,fit: BoxFit.cover,),
          )
        )
    .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: 300,
      child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: false,
              aspectRatio: 1.5,
              enlargeCenterPage: true,
            ),
            items: imageSliders,
          ),
    );
      
  }
}