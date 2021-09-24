import 'dart:js';

import 'package:flutter/material.dart';

import '../review.dart';

class Bookcard extends StatelessWidget {
  final String title;
  final String rating;
  final String author;
  final String image;
  
  Bookcard({
    required this.title,
    required this.author,
    required this.rating,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ReviewPage(),
  ));
},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 19, vertical: 10),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.9),
              offset: Offset(
                0.0,
                10.0,
              ),
              blurRadius: 10.0,
              spreadRadius: -6.0,
            ),
          ],
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.55),
              BlendMode.multiply,
            ),
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Align(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.white, fontSize: 14, fontFamily: "sneha"),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
              alignment: Alignment.center,
            ),
            Align(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 12,
                        ),
                        SizedBox(width: 7),
                        Text(
                          rating,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                      
                        SizedBox(width: 2),
                        Icon(
                          Icons.person,
                          color: Colors.yellow,
                          size: 12,
                        ),
                        Text(
                          author,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              alignment: Alignment.bottomLeft,
            ),
          ],
        ),
      ),
    );
  }
}
