import 'package:flutter/material.dart';
import 'package:transformatix_task/pages/home_page/home_page_components/home_page_components.dart';
import 'package:transformatix_task/pages/home_page/home_page_components/tab_bar.dart';
import 'package:transformatix_task/pages/home_page/home_page_components/trending_widget.dart';
import 'package:transformatix_task/styles/styles.dart';

class BottomCurves extends StatelessWidget {
  const BottomCurves({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          size: Size(
            MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height,
          ),
          painter: CurvedPainter(),
        ),
        Positioned(
          bottom: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Recently played',
                style: HeaderFonts.primaryHeader,
              ),
              const CarouselWidget(),
              Text(
                'Trending tournament',
                style: HeaderFonts.primaryHeader,
              ),
              TrendingWidget(),
              Text(
                'Leader Board',
                style: HeaderFonts.primaryHeader,
              ),
              TabBarWidget(),
            ],
          ),
        ),
      ],
    );
  }
}

class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = AppColors.primary
      ..strokeWidth = 15;

    var path = Path();

    path.moveTo(0, size.height * 0.1);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.1,
        size.width * 0.5, size.height * 0.2);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.3,
        size.width * 1.0, size.height * 0.2);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
