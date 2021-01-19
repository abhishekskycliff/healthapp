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
    paint.color = Colors.orange;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2.0;

    // TODO: implement paint
    var path = Path();
path.lineTo(size.width,size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
  
}