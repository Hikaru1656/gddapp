import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:gddapp/models/main_task.dart';
import 'package:gddapp/view_models/main_tasks_list.dart';
import 'package:gddapp/view_models/sub_tasks_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../models/sub_task.dart';

class MainTaskCard extends HookConsumerWidget {
  final int index;
  MainTaskCard({required this.index});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController _contentEditController = TextEditingController();
    TextEditingController _titleEditController = TextEditingController();
    TextEditingController _subTaskTitleController = TextEditingController();
    final List<MainTask> _mainTaskList =
        ref.watch(mainTasksProvider).currentMainTasksList ?? [];

    return Slidable(
      endActionPane: ActionPane(
        extentRatio: 0.2,
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) async {
              await ref
                  .read(mainTasksProvider)
                  .deleteMainTask(_mainTaskList[index]);
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
          await ref
              .read(mainTasksProvider)
              .getMainTaskById(_mainTaskList[index].mainTaskId!);
          await ref.read(subTasksProvider).getSubTaskList();
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              final List<SubTask> _subTaskList =
                  ref.watch(subTasksProvider).currentSubTasksList;
              return Container(
                height: MediaQuery.of(context).size.height * 2 / 3,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      TextField(
                        controller: _titleEditController,
                        autofocus: true,
                        decoration: InputDecoration(hintText: 'タイトル'),
                      ),
                      TextField(
                        controller: _contentEditController,
                        autofocus: true,
                        decoration: InputDecoration(hintText: 'タスク内容'),
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
                          await ref
                              .read(mainTasksProvider)
                              .updateMainTask(_newMainTask);
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
                                              title:
                                                  _subTaskTitleController.text,
                                              isDone: true,
                                              createdAt: DateTime.now(),
                                              updatedAt: DateTime.now(),
                                            );
                                            await ref
                                                .read(subTasksProvider)
                                                .registerSubTask(_newSubTask);
                                            await ref
                                                .read(subTasksProvider)
                                                .getSubTaskList();
                                            print(_subTaskList.length);
                                            Navigator.pop(context);
                                          },
                                          child: Text('追加'),
                                        ),
                                      ],
                                    );
                                  });
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
}
