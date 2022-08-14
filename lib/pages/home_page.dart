import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Text(
            'Home',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
              padding: EdgeInsets.all(8),
              child: IconButton(
                onPressed: () {},
                icon: Icon(FlutterRemix.message_2_line),
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}
