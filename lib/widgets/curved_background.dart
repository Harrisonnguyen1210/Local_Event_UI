import 'package:flutter/material.dart';

class CurvedBackground extends StatelessWidget {
  final screenHeight;

  CurvedBackground({this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomShapeClipper(),
      child: Container(
        height: screenHeight * 0.5,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}

class BottomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    Offset curvedStartPoint = Offset(0, size.height * 0.85);
    Offset curvedEndpoint = Offset(size.width, size.height * 0.85);
    path.lineTo(curvedStartPoint.dx, curvedStartPoint.dy);
    path.quadraticBezierTo(
        size.width / 2, size.height, curvedEndpoint.dx, curvedEndpoint.dy);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
