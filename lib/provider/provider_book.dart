/*import 'package:bookread/model/book.dart';
import 'package:bookread/services/book_services.dart';
import 'package:flutter/material.dart';


class BookProvider extends ChangeNotifier {
  final _service = ApiService();
  bool isLoading = false;
 List<Book> _book = [];
  List<Book> get books => _book;

  Future<void> getAllBook() async {
    isLoading = true;
    notifyListeners();

    final response = await _service.fetchdataall();

  _book = response;
    isLoading = false;
    notifyListeners();
  }
}
*/