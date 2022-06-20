import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskmanager/task/TaskData.dart';

class AddTaskScreen extends StatelessWidget {
//  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle='';
    return Container(
      color: const Color(0xFF757575),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)
          ),
        ),
        padding: const EdgeInsets.symmetric(
            horizontal: 60,
            vertical: 30
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 30,
                  fontWeight: FontWeight.w600
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25,
              ),
              onChanged: (newText){
                newTaskTitle = newText;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: (){
                Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
              },
              color: Colors.deepPurple,
              child: const Text(
                'Add',
                style: TextStyle(
                    fontSize: 20
                ),
              ),
              textColor: Colors.white,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
