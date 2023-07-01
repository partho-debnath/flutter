import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/task.dart';
import '../models/task_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TaskList? taskList;
  bool isDataLoad = false;

  @override
  void initState() {
    super.initState();
    taskList = TaskList();

    //? without FutureBuilder data fetch from API This is Required.
    /// without FutureBuilder data fetch from API.
    /// show a CircularProgressIndicator when data is't load.
    /// when the data is load show the Data.
    Future.delayed(
      const Duration(seconds: 1),
      () async {
        await fetchDataWithoutFutureBuilder();
        setState(() {
          isDataLoad = true;
        });
      },
    );
  }

  @override
  dispose() {
    super.dispose();
    taskList!.clearTaskList();
    taskList = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: _withoutFutureBuilder(),
    );
  }

  Widget _withoutFutureBuilder() {
    return Visibility(
      replacement: const Center(
        child: CircularProgressIndicator(
          color: Colors.green,
        ),
      ),
      visible: isDataLoad,
      child: ListView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: taskList!.len,
        itemBuilder: (cntxt, index) {
          return Text(taskList!.tasks[index].task);
        },
      ),
    );
  }

  FutureBuilder<TaskList> _withFutureBuilder() {
    return FutureBuilder(
      future: fetchDataWithFutureBuilder(),
      builder: (cntxt, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.purple,
            ),
          );
        } else if (snapshot.hasData == true) {
          return ListView.builder(
            padding: const EdgeInsets.all(10.0),
            itemCount: snapshot.data!.len,
            itemBuilder: (cntxt, index) {
              return Text(snapshot.data!.getTask(index));
            },
          );
        } else {
          return const Center(child: Text('Another'));
        }
      },
    );
  }

  Future<void> fetchDataWithoutFutureBuilder() async {
    const String domain =
        'https://filesharingbd.pythonanywhere.com/task-manager-api/task-list/';

    try {
      Uri uri = Uri.parse(domain);
      var response = await http.get(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'TOKEN 760335853361b4560f4932df21e3ae2eaae7df35',
        },
      );

      final List<dynamic> taskData = json.decode(response.body);

      for (Map<String, dynamic> jsonTask in taskData) {
        taskList!.addNewTask = Task.formJson(jsonTask);
      }
    } catch (error) {
      print(error);
      // throw (error.toString());
    }
  }

  Future<TaskList> fetchDataWithFutureBuilder() async {
    const String domain =
        'https://filesharingbd.pythonanywhere.com/task-manager-api/task-list/';

    try {
      Uri uri = Uri.parse(domain);
      var response = await http.get(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'TOKEN 760335853361b4560f4932df21e3ae2eaae7df35',
        },
      );

      final List<dynamic> taskData = json.decode(response.body);

      for (Map<String, dynamic> jsonTask in taskData) {
        taskList!.addNewTask = Task.formJson(jsonTask);
      }
    } catch (error) {
      print(error);
      // throw (error.toString());
    }

    return taskList as TaskList;
  }
}
