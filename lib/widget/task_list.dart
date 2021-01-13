import 'package:flutter/material.dart';
import 'package:todey/model/task_data.dart';
import 'package:provider/provider.dart';
import 'task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkBoxCallback: (bool newCheck) {
                taskData.upDateTask(task);
              },
              longPressedCallback: () {
                taskData.deleteTask(task);
              },
            );
          },
        );
      },
    );
  }
}
