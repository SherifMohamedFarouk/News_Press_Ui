import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
      SliverAppBar(
      flexibleSpace: FlexibleSpaceBar(
      background: Image.network(
        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'
        , fit: BoxFit.cover,
      ),

    ),
        backgroundColor:Colors.transparent,expandedHeight: 250.0,elevation: 0.0,

      ),
          SliverFillRemaining(
            child: newsDetailsSection(),
          )
    ],
    ),
    );

  }
  Widget newsDetailsSection(){
    return Container(padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          newsRows(),
        ],
      ),
    );
  }
  Widget newsRows(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            child: Text("more News",style:TextStyle(fontWeight: FontWeight.bold),),
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10.0)
            ),
          ),
        )


      ],
    );
  }

}