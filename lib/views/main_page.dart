import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}




class _MainPageState extends State<MainPage> {
  bool _flag = false;
  double _percent = 80;
  void _handleCheckbox(bool? e) {
    setState(() {
      _flag = e!;
    });
  }

  Widget TaskList() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: ListView(
          children: [
            SizedBox(
              child: Center(child: Text('$_percent%', style: TextStyle(fontSize: 32),)),
              height: 40,
              width: 300,
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 32, top: 0),
              child: Container(
                height: 2,
                width: 400,
                color: Colors.black,
              ),
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              tileColor: Colors.yellow.shade600,
              leading: Checkbox(
                value: _flag,
                onChanged: _handleCheckbox,
              ),
              title: Text('hey'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                tileColor: Colors.yellow.shade600,
                title: Text('hey'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                tileColor: Colors.yellow.shade600,
                title: Text('hey'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                tileColor: Colors.yellow.shade600,
                title: Text('hey'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
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
              indicatorColor: Colors.black,
              labelStyle: TextStyle(fontSize: 24),
              unselectedLabelStyle: TextStyle(fontSize: 16, color: Colors.black38),
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
              TaskList(),
              TaskList(),
              TaskList(),
              TaskList(),
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          floatingActionButton: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: FloatingActionButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        child: Text('sample'),
                        height: 600,
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
      ),
    );
  }
}
