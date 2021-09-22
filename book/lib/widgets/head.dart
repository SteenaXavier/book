import 'package:flutter/material.dart';

class Head extends StatelessWidget {
  final String text;
  final double x;
  Head(this.text, this.x);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 12),
        height: 50,
        alignment: Alignment.centerLeft,
        color: Colors.transparent,
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(
                  fontFamily: 'Sneha', fontSize: 18, color: Colors.black),
            ),
            SizedBox(width: x),
            Icon(
              Icons.arrow_forward_outlined,
              color: Colors.yellow[800],
            ),
            Text(
              "SEE ALL",
              style: TextStyle(
                  fontFamily: 'Sneha', fontSize: 17, color: Colors.yellow[800]),
            )
          ],
        ));
  }
}
