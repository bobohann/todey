import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todey/model/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTask = " ";

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'add task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              onChanged: (value) {
                newTask = value;
              },
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              child: Text(
                "add task",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addNewTask(newTask);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
