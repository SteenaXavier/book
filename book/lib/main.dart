import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: ListView(
            children: [
              Head('English', 220),
              Container(
                  height: 210,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      RecipeCard(
                        title: "LORD OF RING",
                        cookTime: "20",
                        rating: "2.5",
                        image: "images/a.jpg",
                      ),
                      RecipeCard(
                        title: "",
                        cookTime: "20",
                        rating: "2.5",
                        image: "images/x.jpg",
                      ),
                      RecipeCard(
                        title: "",
                        cookTime: "20",
                        rating: "2.5",
                        image: "images/y.jpg",
                      ),
                      RecipeCard(
                        title: "",
                        cookTime: "20mint",
                        rating: "2.5",
                        image: "images/z.jpg",
                      ),
                      RecipeCard(
                        title: "",
                        cookTime: "20mint",
                        rating: "2.5",
                        image: "images/e.jpg",
                      ),
                    ],
                  )),
              Head('Malayalam', 185),
              Container(
                  height: 210,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      RecipeCard(
                        title: "VILAYATHU BUDDHA",
                        cookTime: "20mint",
                        rating: "2.5",
                        image: "images/f.jpg",
                      ),
                      RecipeCard(
                        title: "",
                        cookTime: "20mint",
                        rating: "2.5",
                        image: "images/d.jpg",
                      ),
                      RecipeCard(
                        title: "",
                        cookTime: "20mint",
                        rating: "2.5",
                        image: "images/e.jpg",
                      ),
                      RecipeCard(
                        title: "",
                        cookTime: "20mint",
                        rating: "2.5",
                        image: "images/c.jpg",
                      ),
                    ],
                  )),
              Head('Hindi', 235),
              Container(
                  height: 210,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      RecipeCard(
                        title: "GODAN",
                        cookTime: "20mint",
                        rating: "2.5",
                        image: "images/g.jpg",
                      ),
                      RecipeCard(
                        title: "KARMA BHOOMI",
                        cookTime: "20mint",
                        rating: "2.5",
                        image: "images/h.jpg",
                      ),
                      RecipeCard(
                        title: "",
                        cookTime: "20mint",
                        rating: "2.5",
                        image: "images/i.jpg",
                      ),
                      RecipeCard(
                        title: "",
                        cookTime: "20mint",
                        rating: "2.5",
                        image: "images/j.jpg",
                      ),
                      RecipeCard(
                        title: "",
                        cookTime: "20",
                        rating: "7.5",
                        image: "images/y.jpg",
                      ),
                    ],
                  )),
              Head('Favourites', 188),
              Container(
                  height: 210,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      RecipeCard(
                        title: "",
                        cookTime: "20mint",
                        rating: "2.5",
                        image: "images/y.jpg",
                      ),
                      RecipeCard(
                        title: "",
                        cookTime: "20mint",
                        rating: "3.5",
                        image: "images/x.jpg",
                      ),
                      RecipeCard(
                        title: "",
                        cookTime: "20mint",
                        rating: "4.5",
                        image: "images/j.jpg",
                      ),
                      RecipeCard(
                        title: "",
                        cookTime: "20",
                        rating: "2.5",
                        image: "images/a.jpg",
                      ),
                    ],
                  )),
            ],
            scrollDirection: Axis.vertical,
          ),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.chair,
                  color: Colors.black,
                ),
                Text(
                  'FURNITURAA',
                  style: TextStyle(fontFamily: 'Sneha', color: Colors.black),
                ),
                Icon(
                  Icons.chair,
                  color: Colors.black,
                ),
                SizedBox(width: 13),
                
              ],
            ),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white,Colors.amber, Colors.white]),
              ),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
      ),
    );

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

class RecipeCard extends StatelessWidget {
  final String title;
  final String rating;
  final String cookTime;
  final String image;
  RecipeCard({
    required this.title,
    required this.cookTime,
    required this.rating,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 19, vertical: 10),
      width: 169,
      height: 200,
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
          image: AssetImage(image),
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
                    children: [Text("\$" ,style: TextStyle(
                    color:Colors.yellow),),
                      
                      SizedBox(width: 2),
                      Text(
                        cookTime,
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
    );
  }
}
