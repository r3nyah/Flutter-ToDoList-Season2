import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskmanager/task/TaskData.dart';
import 'package:taskmanager/widgets/TaskList.dart';
import 'AddTaskScreen.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: (){
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom
                ),
                child: AddTaskScreen(),
              ),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
//          CircleAvatar(
//             backgroundColor: Colors.white60,
//             radius: 30,
//             child: Icon(
//               Icons.list_rounded,
//               size: 45,
//               color: Colors.purple,
//             ),
//           ),
          SizedBox(
            height: 10,
          ),
          Text(
            'To-Do',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w700,
              color: Colors.white60
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '  ${Provider.of<TaskData>(context).taskCount} Tasks',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white60
            ),
          ),
          SizedBox(height: 5,),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TasksList(),
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
