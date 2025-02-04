import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ApiHandler {
  static String baseUrl = "app-icp-dev-be-python-app.azurewebsites.net";

  static Future<dynamic> postJson(body, url) async {
    setHeadersPost() => {
          'Content-type': 'application/json',
          'Accept': 'application/json',
          "Access-Control-Allow-Origin": "origin",
          "Access-Control-Allow-Credentials": "true"
        };

    var baseUrl = Uri.https(ApiHandler.baseUrl, '$url');

    http.Response response = await http.post(baseUrl,
        headers: setHeadersPost(), body: jsonEncode(body));
    return response;
  }

  static Future<dynamic> postJson1(body, url) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? cookie = prefs.getString("cookie");

    setHeadersPost() => {
          'cookie': '$cookie',
          'Content-type': 'application/json',
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Credentials": "true"
        };

    var baseUrl = Uri.https(ApiHandler.baseUrl, '$url');

    http.Response response = await http.post(baseUrl,
        headers: setHeadersPost(), body: jsonEncode(body));
    return response;
  }

  static Future<dynamic> getJson(url) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? cookie = prefs.getString("cookie");

    setHeadersPost() =>
        {'cookie': '$cookie', 'Content-type': 'application/json'};

    var baseUrl = Uri.https(ApiHandler.baseUrl, url);
    http.Response response = await http.get(baseUrl, headers: setHeadersPost());

    return response;
  }

  static Future<dynamic> putJson(body, url) async {
    setHeadersPost() => {
          'Content-type': 'application/json',
          'Accept': 'application/json',
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Credentials": "true"
        };

    var baseUrl = Uri.https(ApiHandler.baseUrl, url);

    http.Response response = await http.put(baseUrl,
        headers: setHeadersPost(), body: jsonEncode(body));
    return response;
  }

  static Future<http.StreamedResponse> putMultipartJson(
      Map<String, String> body, String url, File file) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? cookie = prefs.getString("cookie");
      var request = http.MultipartRequest("PUT", Uri.https(baseUrl, url));

      body.forEach((key, value) {
        request.fields[key] = value;
      });

      request.files.add(await http.MultipartFile.fromPath(
        'company_logo',
        file.path,
      ));

      request.headers.addAll({
        "Accept": "application/json",
        "cookie": cookie.toString(),
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Credentials": "true"
      });

      var response = await request.send();
      return response;
    } catch (e) {
      debugPrint("Error in putMultipartJson: $e");
      rethrow;
    }
  }
}
