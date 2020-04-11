import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NetworkHelper {
  final String url;

  NetworkHelper({@required this.url});

  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String body = response.body;
      var decodedData = jsonDecode(body);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
