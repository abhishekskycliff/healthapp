import 'package:flutter/material.dart';

class login_design extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return design();
  }


}
class design extends State<login_design>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     body: Container(
       child: CustomPaint(
         painter: CurvePainter(),
       ),
     ),
    );
  }

}

class CurvePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.green[800];
    paint.style = PaintingStyle.fill;

    // TODO: implement paint
    var path = Path();
    path.moveTo(0, size.height * 0.25);
    path.quadraticBezierTo(
        size.width / 2, size.height / 2, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
  
}