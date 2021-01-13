import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class TaskTile extends StatelessWidget {
  TaskTile({
    this.taskTitle,
    this.isChecked = false,
    this.checkBoxCallback,
    this.longPressedCallback,
  });

  final String taskTitle;
  final bool isChecked;
  final Function checkBoxCallback;
  final Function longPressedCallback;

  @override
  Widget build(BuildContext context) {
    void alertBox() {
      Alert(
        context: context,
        title: "Hello User !!!",
        desc: "You wanna to delete this task",
        buttons: [
          DialogButton(
            child: Text(
              "DELETE",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () {
              longPressedCallback();
              Navigator.pop(context);
            },
            width: 120,
          )
        ],
      ).show();
    }

    return ListTile(
      onLongPress: alertBox,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
    );
  }
}
