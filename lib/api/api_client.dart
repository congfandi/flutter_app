import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  final BuildContext context;

  ApiClient({@required this.context});

  get(
      String url,
      Map<String, String> header,
      ValueChanged callback(
          bool status, String message, Map<String, dynamic> header)) async {

    await http.get(url, headers: header).then((response) {
      if (response.statusCode == 200) {
        callback(true, 'request success', jsonDecode(response.body));
      } else if (response.statusCode == 401) {
        //got to login
        callback(false, 'Anda tidak punya akses', null);
        Navigator.pushReplacementNamed(context, '/detail');
      } else if (response.statusCode == 500) {
        //do some casting here
        callback(false, 'Server lagi ngambeg', null);
      }
    }).catchError((err) {
      callback(false, err.toString(), null);
    });

  }
}
