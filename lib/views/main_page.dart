import 'package:flutter/material.dart';
import 'package:gddapp/view_models/main_tasks_list.dart';
import 'package:gddapp/views/maintask_card.dart';
import 'package:gddapp/widgets/drawer_box.dart';
import 'package:gddapp/widgets/floatingactionbutton_box.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MainPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool _flag = false;
    double _percent = 80;

    TextEditingController _projectController = TextEditingController();

    return SafeArea(
      child: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {},
              ),
            ],
            bottom: TabBar(
              indicatorColor: Colors.black,
              labelStyle: TextStyle(fontSize: 24),
              unselectedLabelStyle:
                  TextStyle(fontSize: 16, color: Colors.black38),
              //isScrollable: true,
              tabs: [
                Text('タブ1'),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) {
                        return AlertDialog(
                          title: Text('プロジェクト名'),
                          actions: [
                            TextField(
                              controller: _projectController,
                              autofocus: true,
                              decoration: InputDecoration(
                                hintText: 'プロジェクト名',
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('追加'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          drawer: DrawerBox(),
          body: _MainTasksBody(),
          floatingActionButton: FloatingActionButtonBox(),
        ),
      ),
    );
  }
}

class _MainTasksBody extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _mainTaskList = ref.watch(mainTasksProvider).currentMainTasksList;

    return TabBarView(
      children: <Widget>[
        ListView.builder(
          itemCount: _mainTaskList!.length,
          itemBuilder: (BuildContext context, index) {
            return MainTaskCard(index: index);
          },
        ),
        Container(
          child: Text('hello'),
        ),
      ],
    );
  }
}
