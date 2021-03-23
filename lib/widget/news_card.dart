import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/news_details.dart';
import 'package:news_app/utils/layout_until.dart';

class NewsCard extends StatelessWidget {
  NewsCard(this.tech);

  final String tech;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>NewsDetails() ,));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  child: Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      tech,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LayoutUtils.iconText(Icon(Icons.timer), Text("jan 11")),
                    GestureDetector(onTap:(){} ,child: Icon(Icons.favorite_border),)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
