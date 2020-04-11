import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TaskList extends StatelessWidget {
  // final List<Task> taskLists;
  // TaskList({this.taskLists});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.taskLists[index].name,
              isChecked: taskData.taskLists[index].isDone,
              checkboxCallback: (bool checkboxState) {
                taskData.updateTask(taskData.taskLists[index]);
                /*
                setState(() {
                  Provider.of<TaskData>(context).taskLists[index].toggleDone();
                });
                */
              },
              longPressCallback: () {
                taskData.deleteTask(taskData.taskLists[index]);
              },
            );
          },
          itemCount: taskData.taskCount,
          // itemCount: Provider.of<TaskData>(context).taskLists.length,
        );
      },
    );

    /*
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.taskLists[index].name,
          isChecked: widget.taskLists[index].isDone,
          checkboxCallback: (bool checkboxState) {
            setState(() {
              widget.taskLists[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.taskLists.length,
    );
     */
  }
}

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile({this.taskTitle, this.isChecked, this.checkboxCallback, this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        onChanged: checkboxCallback,
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
      ),
    );
  }
}

/*
class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckboxState;

  TaskCheckbox({this.checkboxState, this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      onChanged: toggleCheckboxState,
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
    );
  }
}
 */
