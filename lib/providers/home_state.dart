import 'package:flutter/material.dart';
import 'package:flutterapp/api/api_client.dart';
import 'package:flutterapp/models/sport/Sport.dart';
import 'package:flutterapp/models/sport/SportsResponse.dart';

class HomeState with ChangeNotifier {
  BuildContext _context;
  ApiClient _client;
  bool requesSport = true;
  final String url = 'https://www.thesportsdb.com/api/v1/json/1/all_sports.php';
  final List<Sport> listSport = new List();

  HomeState(this._context) {
    _client = new ApiClient(context: _context);
  }
  getData(){
    _client.get(url, {}, (status, message, json) {
      SportsResponse sportsResponse = SportsResponse.fromJson(json);
      listSport.addAll(sportsResponse.sports);
      requesSport = false;
      notifyListeners();
      return;
    });
  }
}
