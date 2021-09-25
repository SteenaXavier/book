import 'package:flutter/material.dart';

class ReviewPage extends StatelessWidget {
      final String title;
      final String image;
      final String review;
      final String author;

  const ReviewPage({required this.title,required this.image,required  this.review,required  this.author});
  
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.blue[900],
      body:SafeArea(
        
      child: Column(
        
        children: [Row(
          children: [Container(margin:EdgeInsets.all(13), height:180,width: 120,decoration:BoxDecoration(image:DecorationImage(image: NetworkImage(image),fit: BoxFit.cover)),),
          Container(
            height:180,
            width: 255,
           
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment:MainAxisAlignment.start,
              children: [SizedBox(height: 20,),Text(title,style: TextStyle(fontSize: 25,color: Colors.white),),SizedBox(height: 20,)
                         ,Text(author,style: TextStyle(fontSize: 23),)],),
          )],
        ),Container(margin:EdgeInsets.all(13), height:420,width: 720,child:Text(review))],),
      
      ),
    )
      

    ;
  }
}