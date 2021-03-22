import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  List<Widget> taps = [];

  @override
  void initState() {
    super.initState();
    taps.add(tap("Technology"));
    taps.add(tap("Bussiness"));
    taps.add(tap("Entertainment"));
    taps.add(tap("Sports"));
    taps.add(tap("Health"));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: taps.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("News_app"),
            elevation: 0,
            bottom: TabBar(
              tabs: taps,
              isScrollable: true,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
            ),
          ),
        ));
  }

  Widget tap(String tabName) {
    return Tab(
      text: tabName,
    );
  }
}
