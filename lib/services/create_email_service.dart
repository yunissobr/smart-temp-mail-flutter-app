import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:http/http.dart';

String createUrl = 'https://www.yuniss.com/azull/api/create';

Future<Map> createEmail(String emailId) async {
  // set up POST request arguments
  Map<String, String> headers = {"Content-type": "application/json"};
  String json =
      '{"mail_to": "$emailId", "mail_from": "_", "subject": "_", "message": "_", "date": "_", "time": "_"}';
  Response response = await post(createUrl, headers: headers, body: json);
  int statusCode = response.statusCode;

  String body = response.body;
  Map parsed = jsonDecode(body);

  return parsed;
}
