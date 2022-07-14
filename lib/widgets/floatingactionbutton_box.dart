import 'package:flutter/material.dart';
import 'package:gddapp/models/main_task.dart';
import 'package:gddapp/view_models/main_tasks_list.dart';
import 'package:gddapp/views/maintask_card.dart';
import 'package:gddapp/widgets/drawer_box.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FloatingActionButtonBox extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController _contentController = TextEditingController();
    TextEditingController _titleController = TextEditingController();
    return Padding(
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
                    decoration: InputDecoration(hintText: 'タイトル'),
                  ),
                  TextField(
                    controller: _contentController,
                    autofocus: true,
                    decoration: InputDecoration(hintText: 'タスク内容'),
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
                      await ref
                          .read(mainTasksProvider)
                          .registerMainTask(_newMainTask);
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
    );
  }
}
