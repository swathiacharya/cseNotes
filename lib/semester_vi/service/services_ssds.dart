import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:notes/semester_vi/User.dart';

class Services {
  static const String url = 'https://raw.githubusercontent.com/swathiacharya/jsonfile1/master/cs63.json';

  static Future<List<User>> getUsers() async {
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        List<User> list = parseUsers(response.body);
        return list;
      } else {
        throw Exception("Error");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static List<User> parseUsers(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<User>((json) => User.fromJson(json)).toList();
  }
}