import 'package:flutter/material.dart';

void main() => runApp(const MyApp()); //main method. Whatever we want to run, goes here.

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //not sure what this does but it appears commonly on every flutter app we have done so far
  //probably something to do with declaring this as the main widget, within which all other widgets exist

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //create a MaterialApp widget
      title: 'Flutter layout demo', //sets title (text that appears in browser tab window/name of application when it opens)
      home: Scaffold( //creates scaffold, within which other things will go
        appBar: AppBar( //Creates an app bar, kind of like a header bar at the top of the screen
          title: const Text('Flutter layout demo'), //title text, goes into appbar
        ),
        body: const Center( //creates a central text in the body of the scaffold
          child: Text('Hello World'), //the contents of the central text
        ),
      ),
    );
  }
}
