import 'package:flutter/material.dart';


class login_wave_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(


        home: Container(
          color: Colors.white,
          child: CustomPaint(
            child: Image.network("https://www.sketchappsources.com/resources/source-image/user-interface-basic-icons-cresnar.png"),
            painter: CurvePainter(),
          ),
        ),
      );
  }
}


class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.green[800];
    paint.style = PaintingStyle.fill;


    var path = Path();

    path.moveTo(0, 800);
    // path.quadraticBezierTo(size.width * 0.25, size.height * 0.875,
    //     size.width * 0.5, size.height * 0.9167);
    // path.quadraticBezierTo(size.width * 0.75, size.height * 0.9584,
    //     size.width * 1.0, size.height * 0.9167);
    path.lineTo(0, 500);
    path.lineTo(500, 800);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}