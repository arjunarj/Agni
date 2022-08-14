import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(8),
          color: Colors.grey[100],
          child: TextField(
            cursorColor: Colors.deepPurple,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                fillColor: Colors.grey),
          ),
        ),
      ),
      toolbarHeight: 80,
      backgroundColor: Colors.white,
      elevation: 0,
    ));
  }
}
