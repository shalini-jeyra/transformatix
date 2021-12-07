import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:transformatix_task/styles/styles.dart';

class TrendingWidget extends StatefulWidget {
  const TrendingWidget({ Key? key }) : super(key: key);

  @override
  State<TrendingWidget> createState() => _TrendingWidgetState();
}

class _TrendingWidgetState extends State<TrendingWidget> {
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
    return CarouselSlider(
            options: CarouselOptions(
              autoPlay: false,
              aspectRatio: 1.5,
              enlargeCenterPage: true,
            ),
            items: imageSliders,
          );
  }
}