import 'dart:convert';

import 'package:book/book.dart';

import 'package:http/http.dart' as http;

class Bookapi{
 static Future<List<Book>> getdetails (String search) async{

     var response = await http.get(Uri.parse("https://www.googleapis.com/books/v1/volumes?q="+search+"+inauthor:keyes&key=AIzaSyDBdyxvrvVKxRiv2b24gE6nFEnT3g8r190"));
     Map data=jsonDecode(response.body);
     List temp =[];
     for (var i in data['items']){
       temp.add(i['volumeInfo']);  
     }

    return  Book.bookfromsnapshot(temp);
    
}}
