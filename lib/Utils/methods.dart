import 'dart:convert';
import '../Model/product_model.dart';
import 'package:http/http.dart' as http;


class Methods {
  Future<List<Product>> getUser(List<Product> users) async {

      var response =
      await http.post(Uri.parse("http://smartgram.co/api/category-list.php"));

      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);
        for (var u in jsonData['data']) {
          final name = u['name'];
          final image = u["image"];
          Product user = Product(name, image);
          users.add(user);
        }
        return users;
      } else {
// The request failed
        throw Exception(
            'API call failed with status code: ${response.statusCode}');
      }
    }

  }



