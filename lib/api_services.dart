import 'dart:convert';
import 'package:http/http.dart' as http;
import 'repositories_model.dart';

class ApiServices {
  static const urlBase = 'api.github.com';

  static Future<dynamic> pegarRepositorios() async {
    var url = Uri.http(urlBase, '/repositories');
    var response = await http.get(url);

    var repositorios = (json.decode(response.body))
        .map((item) => Repositorios.fromJson(item))
        .toList();

    return repositorios;
  }
}
