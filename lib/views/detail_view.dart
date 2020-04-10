import 'package:flutter/material.dart';
import 'package:flutterapp/providers/home_state.dart';
import 'package:flutterapp/views/home_view.dart';
import 'package:provider/provider.dart';

class DetailView extends StatefulWidget {
  @override
  _DetailViewState createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    var state = Provider.of<HomeState>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail View"),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/home');
            }),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.check_box),
              onPressed: () {
                state.getData();
              })
        ],
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text("Detail View"),
      ),
    );
  }
}
