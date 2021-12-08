import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:transformatix_task/styles/styles.dart';

class TrendingWidget extends StatefulWidget {
  const TrendingWidget({Key? key}) : super(key: key);

  @override
  State<TrendingWidget> createState() => _TrendingWidgetState();
}

class _TrendingWidgetState extends State<TrendingWidget> {
  final pages = List.generate(
      3,
      (index) => Container(
            decoration: BoxDecoration(
                gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 239, 80, 95),Color.fromARGB(255, 133, 43, 51),],
            ), borderRadius: BorderRadius.circular(10),),
                child: Stack(
                  children: [
                    Positioned(
                            top: 5,
                            left: -10,
                            child: SizedBox(
                              height: 150,
                              width: 150,
                              child: Image.asset('assets/tournament.png')),
                          ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: Text('Angular JS',style: HeaderFonts.secondaryHeader,),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children:  [
                                  Text('Players in pool:',style: MiniTexts.primaryText,),
                                  Text('231/350',style: MiniTexts.primaryText,)
                                ],
                              ),
                              Column(
                                children:  [
                                  Text('Prize money',style: MiniTexts.primaryText,),
                                  Text('Rs.500',style: MiniTexts.primaryText,)
                                ],
                              )
                            ],
                          ),
                         
                        ],
                      ),
                    ),
                     
                  ],
                ),
          ));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 200,
        width: MediaQuery.of(context).size.width*1,
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: false,
            viewportFraction: 0.8,
            // aspectRatio: 1.9,
            enlargeCenterPage: true,
          ),
          items: pages,
        ),
      ),
    );
  }
}
