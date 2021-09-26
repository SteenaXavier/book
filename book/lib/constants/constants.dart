import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final heading_text = GoogleFonts.pacifico(
  textStyle: TextStyle(
    color: Colors.white,
    fontSize: 30,
  ),
);

final author_name = GoogleFonts.dancingScript(
  textStyle: TextStyle(
    fontSize: 20,
  ),
);

final bookname = GoogleFonts.raleway(
  textStyle: TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w500,
  ),
);

final description = GoogleFonts.mulish(
  textStyle: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  ),
);

final description_name = GoogleFonts.montserrat(
  textStyle: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  ),
);

class HorizontalDivider extends StatelessWidget {
  HorizontalDivider(
      {required this.color,
      required this.height,
      required this.width,
      required this.topmargin});

  final Color color;
  final double height;
  final double width;
  final double topmargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(top: topmargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(500),
          right: Radius.circular(500),
        ),
        color: color,
      ),
    );
  }
}

class Circle extends StatelessWidget {
  Circle({required this.radius, required this.color});

  final double radius;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      margin: EdgeInsets.only(top: 60),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(300),
          right: Radius.circular(300),
        ),
        color: color,
      ),
    );
  }
}

class section extends StatelessWidget {
  section({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Text(text, style: description_name),
    );
  }
}
