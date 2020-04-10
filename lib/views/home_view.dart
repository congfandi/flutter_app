import 'package:flutter/material.dart';
import 'package:flutterapp/providers/home_state.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (c) => HomeState(c),
      child: Consumer<HomeState>(
          builder: (context, homeState, _) => Scaffold(
                appBar: AppBar(
                  title: Text("Home View"),
                  backgroundColor: Colors.blue,
                  actions: <Widget>[
                    IconButton(
                        icon: Icon(Icons.refresh),
                        onPressed: () {
                          homeState.getData();
                        })
                  ],
                ),
                body: homeState.requesSport
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : ListView.builder(
                        itemBuilder: (c, i) => ListTile(
                          title: Text(
                            homeState.listSport[i].strSport,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        itemCount: homeState.listSport.length,
                      ),
              )),
    );
  }
}
