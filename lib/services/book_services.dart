import 'dart:convert';

import 'package:bookread/model/book.dart';
import 'package:http/http.dart' as http;

class ApiService {
 Iterable? list;
  Future<List<Book>> fetchdataall() async {
    // handleTick();
    final response =
        await http.get(Uri.parse("https://fakerapi.it/api/v1/books"));

    final jsonResponse = json.decode(response.body);
    print(jsonResponse);
    if (response.statusCode == 200) {
      // print(response.body);
      list = jsonResponse['data'];
      print(list);

      return list!.map((model) => Book.fromJson(model)).toList();
    } else {
      throw Exception('Eror');
    }
  }
}
