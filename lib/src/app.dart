import 'package:flutter/material.dart';
import 'models/user_model.dart';
import 'widgets/user_list.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';

class App extends StatefulWidget {
  @override
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {

  int count = 0;
  List<UserModel> usersList = [];

  void fetchData() async {
    count++;
    final result = await get('https://jsonplaceholder.typicode.com/users/$count');
    final model = new UserModel.fromJson(json.decode(result.body));

    setState(() {
      usersList.add(model);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Users Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        body: UserList(usersList),
        appBar: AppBar(
          title: Text('Flutter Users Demo'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchData,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
