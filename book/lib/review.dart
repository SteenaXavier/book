import 'package:book/constants/constants.dart';
import 'package:flutter/material.dart';

class ReviewPage extends StatelessWidget {
  final String title;
  final String image;
  final String review;
  final String author;

  const ReviewPage(
      {required this.title,
      required this.image,
      required this.review,
      required this.author});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          'Review',
          style: heading_text,
          //
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.lightBlueAccent,
                          Colors.blue,
                          Colors.lightBlueAccent
                        ]),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                  ),
                  height: 250,
                  width: 500,
                ),
                Center(
                  child: Container(
                    height: 250,
                    width: 180,
                    margin: EdgeInsets.only(top: 100),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                      image: DecorationImage(
                        image: NetworkImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Circle(
                      radius: 50,
                      color: Colors.white,
                    ),
                    Circle(
                      radius: 30,
                      color: Colors.white,
                    ),
                    HorizontalDivider(
                      color: Colors.white54,
                      height: 6,
                      width: 150,
                      topmargin: 60,
                    ),
                    Circle(
                      radius: 30,
                      color: Colors.white,
                    ),
                    Circle(
                      radius: 50,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Center(
                    child: Text(
                      title,
                      style:
                          bookname, //TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 400,
                  child: Text(author,
                      textAlign: TextAlign.center, style: author_name),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black26,
              ),
              margin: EdgeInsets.only(top: 10),
              height: 1,
            ),
            Container(
              margin: EdgeInsets.all(13),
              width: 720,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Storyline",
                      style: description_name,
                    ),
                  ),
                  Text(review, style: description),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
