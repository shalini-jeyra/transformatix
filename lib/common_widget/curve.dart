import 'package:flutter/material.dart';
import 'package:transformatix_task/styles/styles.dart';
class BottomCurves extends StatelessWidget {
  const BottomCurves({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CustomPaint(
      size: const Size(400,400), 
      painter: CurvedPainter(),
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

    path.moveTo(0, size.height * 0.7);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.7,
        size.width * 0.5, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.9,
        size.width * 1.0, size.height * 0.8);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}