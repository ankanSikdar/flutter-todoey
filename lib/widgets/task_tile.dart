import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Buy Milk',
        style: TextStyle(
          fontSize: 18.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
        checkBoxState: isChecked,
        onPressed: (bool changedState) {
          setState(() {
            isChecked = changedState;
          });
        },
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  TaskCheckBox({this.checkBoxState, this.onPressed});

  final bool checkBoxState;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      onChanged: onPressed,
      activeColor: Colors.lightBlueAccent,
    );
  }
}
