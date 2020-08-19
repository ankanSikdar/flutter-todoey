import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({this.onAdd});

  final Function onAdd;

  @override
  Widget build(BuildContext context) {
    String text;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                text = value;
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(
                vertical: 20.0,
              ),
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                if (text.length > 0) {
                  onAdd(text);
                  text = '';
                  Navigator.pop(context);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
