import 'package:flutter/material.dart';

class DetailCurvedBackground extends StatelessWidget {
  final double screenHeight;
  final String imagePath;

  const DetailCurvedBackground({this.screenHeight, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SideClipper(),
      child: Stack(
        children: <Widget>[
          Container(
            height: screenHeight * 0.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: screenHeight * 0.5,
            decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.6)),
          ),
        ],
      ),
    );
  }
}

class SideClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.quadraticBezierTo(
        size.width / 5, size.height * 0.9, size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
