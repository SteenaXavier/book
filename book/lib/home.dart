import 'package:book/book.dart';
import 'package:book/bookapi.dart';
import 'package:flutter/material.dart';
import 'widgets/bookCard.dart';
import 'constants/constants.dart';

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
   
    catbooks = await Bookapi.getdetails("cats");
 
    flowerbooks = await Bookapi.getdetails("river");
   
    mountainsbooks = await Bookapi.getdetails("dogs");
   

    setState(
      () {
        isloading = false;
      },
    );
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
          section(
            text: "Cat",
          ),
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
                          review: catbooks[index].review,
                          image: catbooks[index].image);
                    },
                  ),
          ),
          HorizontalDivider(
            topmargin: 10,
            color: Colors.grey,
            height: 1,
            width: 300,
          ),
          section(
            text: "Dog",
          ),
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
                          review: dogbooks[index].review,
                          image: dogbooks[index].image);
                    },
                  ),
          ),
          HorizontalDivider(
            topmargin: 10,
            color: Colors.grey,
            height: 1,
            width: 300,
          ),
          section(
            text: "Flowers",
          ),
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
                            review: flowerbooks[index].review,
                            image: flowerbooks[index].image);
                      })),
          section(
            text: "Favourites",
          ),
          HorizontalDivider(
            topmargin: 10,
            color: Colors.grey,
            height: 1,
            width: 300,
          ),
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
                            review: mountainsbooks[index].review,
                            image: mountainsbooks[index].image);
                      })),
        ],
        scrollDirection: Axis.vertical,
      ),
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          'Bookz',
          style: heading_text,
          //
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
    );
  }
}
