import 'package:book/book.dart';
import 'package:book/bookapi.dart';
import 'package:book/widgets/head.dart';
import 'package:flutter/material.dart';
import 'widgets/bookCard.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Book> dogbooks = [];
   List<Book> catbooks = [];
  List<Book> flowerbooks = [];
  List<Book> mountainsbooks = [];
  bool isloading = true;
  Future<void> getbook() async {
    dogbooks = await Bookapi.getdetails("dogs");
    print("dog");
    catbooks = await Bookapi.getdetails("cats");
    print("do");
    flowerbooks =await Bookapi.getdetails("cats");
    print("d");
    mountainsbooks = await Bookapi.getdetails("dogs");
    print("dor");

    setState(() {
      isloading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getbook();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Head('Cat', 220),
          Container(
              height: 210,
              child: isloading
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: catbooks.length,
                      itemBuilder: (context, index) {
                        return Bookcard(
                            
                            title: catbooks[index].title,
                            author: catbooks[index].author,
                            rating: catbooks[index].rating,
                             review:catbooks[index].review, 
                            image: catbooks[index].image);
                      })),
          Head('Dog', 185),
          Container(
              height: 210,
              child: isloading
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: dogbooks.length,
                      itemBuilder: (context, index) {
                        return Bookcard(
                            title: dogbooks[index].title,
                            author: dogbooks[index].author,
                            rating: dogbooks[index].rating,
                            review:dogbooks[index].review, 
                            image: dogbooks[index].image);
                      })),
          Head('flowers', 235),
          Container(
              height: 210,
              child: isloading
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: flowerbooks.length,
                      itemBuilder: (context, index) {
                        return Bookcard(
                            title: flowerbooks[index].title,
                            author: flowerbooks[index].author,
                            rating: flowerbooks[index].rating,
                             review:flowerbooks[index].review, 
                            image: flowerbooks[index].image);
                      })),
          Head('Favourites', 188),
          Container(
              height: 210,
              child: isloading
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: mountainsbooks.length,
                      itemBuilder: (context, index) {
                        return Bookcard(
                            title: mountainsbooks[index].title,
                            author: mountainsbooks[index].author,
                            rating: mountainsbooks[index].rating,
                            review:mountainsbooks[index].review, 
                            image: mountainsbooks[index].image);
                      })),
        ],
        scrollDirection: Axis.vertical,
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'BOOKZ',
              style: TextStyle(fontFamily: 'Sneha', color: Colors.black),
            ),
            Icon(
              Icons.library_books,
              color: Colors.black,
            ),
            SizedBox(width: 13),
          ],
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white, Colors.transparent, Colors.white]),
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
