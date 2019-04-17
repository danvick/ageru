import 'package:ageru/config.dart';
import 'package:flutter/material.dart';

class FancyScreenBackground extends StatelessWidget {
  final Widget child;

  FancyScreenBackground({this.child});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: GreenPainter(),
      child: child,
    );
  }
}

class GreenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    Paint paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = Colors.white;
    canvas.drawPath(mainBackground, paint);

    Path topCurve = Path();
    topCurve.moveTo(width * .3, 0);
    topCurve.quadraticBezierTo(width * .5, 65, width * .7, 60);
    topCurve.quadraticBezierTo(width * .9, 50, width, 100);
    topCurve.lineTo(width, 0);
    paint.color = Config.weirdGreen;
    canvas.drawPath(topCurve, paint);

    Path topTrace = Path();
    topTrace.moveTo(width * .27, 0);
    topTrace.quadraticBezierTo(width * .4, 75, width * .8, 65);
    topTrace.quadraticBezierTo(width * .95, 69, width, 120);
    topTrace.lineTo(width, 0);
    paint.color = Config.weirdGreen.withOpacity(.4);
    canvas.drawPath(topTrace, paint);

    Path bottomCurve = Path();
    bottomCurve.moveTo(0, height * .85);
    bottomCurve.quadraticBezierTo(width * .6, height, width, height * .9);
    paint.color = Config.weirdGreen;
    bottomCurve.lineTo(width, height);
    bottomCurve.lineTo(0, height);
    canvas.drawPath(bottomCurve, paint);

    Path bottomTrace = Path();
    bottomTrace.moveTo(0, height * .83);
    bottomTrace.quadraticBezierTo(width * .6, height, width, height * .88);
    paint.color = Config.weirdGreen.withOpacity(.4);
    bottomTrace.lineTo(width, height);
    bottomTrace.lineTo(0, height);
    canvas.drawPath(bottomTrace, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
