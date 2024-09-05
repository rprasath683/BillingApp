import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';

class ApiService {
  static const String apiUrl =
      'mongodb+srv://mail2muthuvel15:xQoNe2rRzBisZ8F3@clusterbillproject.pmrdkqo.mongodb.net/';

  Future<List<User>> getUsers() async {
    final response = await http.get(Uri.parse('$apiUrl/users'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
