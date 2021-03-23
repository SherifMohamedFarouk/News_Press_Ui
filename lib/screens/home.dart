import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widget/news_card.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  List<Widget> tabs = [];

  @override
  void initState() {
    super.initState();
    tabs.add(tap("Technology"));
    tabs.add(tap("Bussiness"));
    tabs.add(tap("Entertainment"));
    tabs.add(tap("Sports"));
    tabs.add(tap("Health"));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("News_app"),
            elevation: 0,
            bottom: TabBar(
              tabs: tabs,
              isScrollable: true,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
            ),
            actions: [
              Icon(Icons.search,color: Colors.black,),
              SizedBox(width: 10,),
              Icon(Icons.notifications,color: Colors.black,),
              SizedBox(width: 10,)
            ],
          ),
          body: TabBarView(
              children: tabs.map((e) => NewsCard(e.toString())).toList(),
        )));
  }

  Widget tap(String tabName) {
    return Tab(
      text: tabName,
    );
  }
}
