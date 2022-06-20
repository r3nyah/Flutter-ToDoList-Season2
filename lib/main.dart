import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskmanager/main.dart';
import 'package:taskmanager/task/TaskData.dart';
import 'package:taskmanager/screens/TaskScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
