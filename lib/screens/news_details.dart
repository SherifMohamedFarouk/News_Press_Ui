import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:news_app/utils/layout_until.dart';

class NewsDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                fit: BoxFit.cover,
              ),
            ),
            backgroundColor: Colors.transparent,
            expandedHeight: 250.0,
            elevation: 0.0,
          ),
          SliverFillRemaining(
            child: newsDetailsSection(),
          )
        ],
      ),
    );
  }

  Widget newsDetailsSection() {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          newsRows(),
          LayoutUtils.iconText(Icon(Icons.timer), Text("jan 11"))
          ,SizedBox(height: 15.0,)
          ,
          Text("First news ",style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(child: Divider(color: Colors.grey,thickness: 2.0,),width: 200,),
          Expanded(child: Html(style: {"p":Style(color: Colors.grey)},
              data: " <p>Test news </p> Test news prag 2</p>"
          ))



        ],
      ),
    );
  }

  Widget newsRows() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            child: Text(
              "more News",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(10.0)),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Row(
            children: [
              IconButton(icon: Icon(Feather.moon), onPressed: null),
              IconButton(icon: Icon(Feather.bookmark), onPressed: null)
            ],
          ),
        )
      ],
    );
  }
}
