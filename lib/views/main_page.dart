import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:gddapp/models/main_task.dart';
import 'package:gddapp/view_models/current_user.dart';
import 'package:gddapp/view_models/main_tasks_list.dart';
import 'package:gddapp/view_models/sub_tasks_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/sub_task.dart';




class MainPage extends HookConsumerWidget {
  bool _flag = false;
  double _percent = 80;
  TextEditingController _contentController = TextEditingController();
  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentEditController = TextEditingController();
  TextEditingController _titleEditController = TextEditingController();
  TextEditingController _projectController = TextEditingController();
  TextEditingController _subTaskContentController = TextEditingController();
  TextEditingController _subTaskTitleController = TextEditingController();


  // List<MainTask>? mainTaskList(WidgetRef ref) {
  //   ref.read(mainTasksProvider).getMainTaskList();
  //   List<MainTask>? _mainTasksList = ref.read(mainTasksProvider).currentMainTasksList;
  //   if (_mainTasksList == null) {
  //     _mainTasksList = [
  //       MainTask(
  //         title: 'できてません',
  //         description: _contentController.text,
  //         reward: '金',
  //         isDone: true,
  //         deadline: DateTime.now(),
  //         subTasksList: [],
  //         createdAt: DateTime.now(),
  //         updatedAt: DateTime.now(),
  //       ),
  //     ];
  //   }
  //   return _mainTasksList;
  // }

  // List<MainTask>? mainTaskList(WidgetRef ref) {
  //   ref.read(mainTasksProvider).getMainTaskList();
  //   List<MainTask>? _mainTasksList = ref.read(mainTasksProvider).currentMainTasksList;
  //   if (_mainTasksList == null) {
  //     _mainTasksList = [
  //       MainTask(
  //         title: 'できてません',
  //         description: _contentController.text,
  //         reward: '金',
  //         isDone: true,
  //         deadline: DateTime.now(),
  //         subTasksList: [],
  //         createdAt: DateTime.now(),
  //         updatedAt: DateTime.now(),
  //       ),
  //     ];
  //   }
  //   return _mainTasksList;
  // }
  // void _handleCheckbox(bool? e) {
  //   setState(() {
  //     _flag = e!;
  //   });
  // }

  // Widget TaskList(WidgetRef ref) {
  //   return Padding(
  //     padding: const EdgeInsets.all(32.0),
  //     child: Center(
  //       child: ListView(
  //         children: [
  //           SizedBox(
  //             child: Center(child: Text('$_percent%', style: TextStyle(fontSize: 32),)),
  //             height: 40,
  //             width: 300,
  //           ),
  //
  //           Padding(
  //             padding: const EdgeInsets.only(bottom: 32, top: 0),
  //             child: Container(
  //               height: 2,
  //               width: 400,
  //               color: Colors.black,
  //             ),
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.only(top: 3),
  //             child: ListTile(
  //               shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(5),
  //               ),
  //               tileColor: Colors.yellow.shade600,
  //               title: Text(ref.read(mainTasksProvider).currentMainTask!.title),
  //             ),
  //           ),
  //
  //         ],
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final _mainTaskList = mainTaskList(ref);
    final _mainTaskList = ref.watch(mainTasksProvider).currentMainTasksList;
    final _currentUser = ref.watch(currentUserProvider).currentUser;
    final _subTaskList = ref.watch(subTasksProvider).currentSubTasksList;
    return SafeArea(
      child: DefaultTabController(
        initialIndex: 0,
        length: 2,
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
                        }
                    );
                    },
                ),
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  child: Text('Drawer Header'),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text("Item 1"),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  title: Text("Item 2"),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView.builder(
          itemCount: _mainTaskList!.length,
          itemBuilder: (BuildContext context, index) {
            return Slidable(
              endActionPane: ActionPane(
                extentRatio: 0.2,
                motion: ScrollMotion(),
                children: [
                  SlidableAction(
                    onPressed: (context) async {
                      await ref.read(mainTasksProvider).deleteMainTask(_mainTaskList[index]);
                      await ref.watch(mainTasksProvider).getMainTaskList();
                    },
                    backgroundColor: Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),
                ],
              ),

              child: GestureDetector(
                onTap: () async {
                   _contentEditController.text = _mainTaskList[index].description;
                   _titleEditController.text = _mainTaskList[index].title;
                   await ref.read(mainTasksProvider).getMainTaskById(_mainTaskList[index].mainTaskId!);
                   await ref.read(subTasksProvider).getSubTaskList();
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 2 / 3,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                TextField(
                                  controller: _titleEditController,
                                  autofocus: true,
                                  decoration: InputDecoration(
                                      hintText: 'タイトル'
                                  ),
                                ),
                                TextField(
                                  controller: _contentEditController,
                                  autofocus: true,
                                  decoration: InputDecoration(
                                      hintText: 'タスク内容'
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () async {
                                    MainTask? _newMainTask = MainTask(
                                      mainTaskId: _mainTaskList[index].mainTaskId,
                                      title: _titleEditController.text,
                                      description: _contentEditController.text,
                                      reward: '金',
                                      isDone: true,
                                      deadline: DateTime.now(),
                                      createdAt: DateTime.now(),
                                      updatedAt: DateTime.now(),
                                    );
                                    //_mainTaskList[index] = _newMainTask;
                                    await ref.read(mainTasksProvider).updateMainTask(_newMainTask);
                                    await ref.read(mainTasksProvider).getMainTaskList();
                                    Navigator.pop(context);
                                  },
                                  child: Text('変更'),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (_) {
                                                return AlertDialog(
                                                  title: Text('サブタスク名'),
                                                  actions: [
                                                    TextField(
                                                      controller: _subTaskTitleController,
                                                      autofocus: true,
                                                      decoration: InputDecoration(
                                                        hintText: 'サブタスク名',
                                                      ),
                                                    ),
                                                    TextButton(
                                                      onPressed: () async {
                                                        SubTask? _newSubTask = SubTask(
                                                          title: _subTaskTitleController.text,
                                                          isDone: true,
                                                          createdAt: DateTime.now(),
                                                          updatedAt: DateTime.now(),
                                                        );
                                                        await ref.read(subTasksProvider).registerSubTask(_newSubTask);
                                                        await ref.read(subTasksProvider).getSubTaskList();
                                                        print(_subTaskList.length);
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text('追加'),
                                                    ),
                                                  ],
                                                );
                                              }
                                          );
                                        },
                                        icon: Icon(Icons.add),
                                    ),
                                    Text('サブタスク追加'),
                                  ],
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: _subTaskList.length,
                                    itemBuilder: (BuildContext context, index) {
                                      return GestureDetector(
                                        onTap: () {},
                                        child: Card(
                                          child: ListTile(
                                            title: Text(_subTaskList[index].title),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                  );
                },
                child: Card(
                  child: ListTile(
                    title: Text(_mainTaskList[index].description),
                  ),
                ),
              ),
            );
          }
        ),
              Container(child: Text('hello'),),
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
                      return Column(
                        children: [
                          TextField(
                            controller: _titleController,
                            autofocus: true,
                            decoration: InputDecoration(
                              hintText: 'タイトル'
                            ),
                          ),
                          TextField(
                            controller: _contentController,
                            autofocus: true,
                            decoration: InputDecoration(
                                hintText: 'タスク内容'
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () async {
                              MainTask? _newMainTask = MainTask(
                                title: _titleController.text,
                                description: _contentController.text,
                                reward: '金',
                                isDone: true,
                                deadline: DateTime.now(),
                                createdAt: DateTime.now(),
                                updatedAt: DateTime.now(),
                              );
                              await ref.read(mainTasksProvider).registerMainTask(_newMainTask);
                              await ref.watch(mainTasksProvider).getMainTaskList();
                              _contentController.text = '';
                              _titleController.text = '';
                              Navigator.pop(context);
                              },
                              child: Text('追加'),
                          ),
                        ],
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
