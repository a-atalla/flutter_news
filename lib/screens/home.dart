import 'package:flutter/material.dart';
import 'package:flutter_news/screens/hopme_tabs/favourites.dart';
import 'package:flutter_news/screens/hopme_tabs/popular.dart';
import 'package:flutter_news/screens/hopme_tabs/whats_new.dart';
import 'package:flutter_news/widgets/navigation_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Explore'),
          centerTitle: false,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(text: "WHAT'S NEW"),
              Tab(text: "POPULAR"),
              Tab(text: "FAVOURITES")
            ],
            controller: _tabController,
          ),
        ),
        drawer: NavigationDrawer(),
        body: TabBarView(
          children: <Widget>[
            WhatsNew(),
            Popular(),
            Favourites(),
          ],
          controller: _tabController,
        ));
  }
}
