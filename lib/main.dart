
import 'package:bookread/model/book.dart';
import 'package:bookread/view/home_view_model.dart';
import 'package:bookread/view_model/book_view_model.dart';
import 'package:flutter/material.dart';



import 'package:provider/provider.dart';

 main() async {
 
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

 List<Book> _book = [];
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => JobViewModel(_book),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

