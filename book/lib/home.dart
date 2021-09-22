import 'package:book/book.dart';
import 'package:book/bookapi.dart';
import 'package:book/widgets/head.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'widgets/bookCard.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Book> books = [];
  bool isloading = true;
  Future<void> getbook() async {
    books = await Bookapi.getdetails();
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
          Head('English', 220),
          Container(
              height: 210,
              child: isloading
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: books.length,
                      itemBuilder: (context, index) {
                        return Bookcard(
                            title: books[index].title,
                            author: books[index].author,
                            rating: books[index].rating,
                            image: books[index].image);
                      })),
          Head('Malayalam', 185),
          Container(
              height: 210,
              child: isloading
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: books.length,
                      itemBuilder: (context, index) {
                        return Bookcard(
                            title: books[index].title,
                            author: books[index].author,
                            rating: books[index].rating,
                            image: books[index].image);
                      })),
          Head('Hindi', 235),
          Container(
              height: 210,
              child: isloading
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: books.length,
                      itemBuilder: (context, index) {
                        return Bookcard(
                            title: books[index].title,
                            author: books[index].author,
                            rating: books[index].rating,
                            image: books[index].image);
                      })),
          Head('Favourites', 188),
          Container(
              height: 210,
              child: isloading
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: books.length,
                      itemBuilder: (context, index) {
                        return Bookcard(
                            title: books[index].title,
                            author: books[index].author,
                            rating: books[index].rating,
                            image: books[index].image);
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
