import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            /*leading: IconButton(
              icon: Icon(Icons.dehaze),
              onPressed: () {},
              ),*/
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            //isScrollable: true,
            tabs: [
              Text('b'),
              Text('c'),
              Text('d'),
              Text('e'),
            ],
          ),
        ),
        drawer: Drawer(),
        body: TabBarView(
          children: <Widget>[
            /*Center(
              child: Column(
                children: [
                  ListView(
                    children: [
                      ListTile(
                        title: Text('野球１'),
                      ),
                      ListTile(
                        title: Text('野球2'),
                      ),
                      ListTile(
                        title: Text('野球3'),
                      ),
                      ListTile(
                        title: Text('野球4'),
                      ),
                    ],
                  ),
                ],
              ),
            ),*/
            Center(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('サッカー１'),
                  ),
                  ListTile(
                    title: Text('サッカー2'),
                  ),
                  ListTile(
                    title: Text('サッカー3'),
                  ),ListTile(
                    title: Text('サッカー4'),
                  ),
                  ListTile(
                    title: Text('サッカー5'),
                  ),

                ],
              ),
            ),
            Center(
              child: Text('テニス', style: TextStyle(fontSize: 32.0)),
            ),
            Center(
              child: Text('バスケ', style: TextStyle(fontSize: 32.0)),
            ),
            Center(
              child: Text('剣道', style: TextStyle(fontSize: 32.0)),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: FloatingActionButton(
            onPressed: () {
              showBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      child: Text('sample'),
                      height: 300,
                      alignment: Alignment.center,
                      width: double.infinity,
                    );
                  },
              );
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
