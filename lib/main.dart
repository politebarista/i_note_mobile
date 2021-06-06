import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_note_mobile/modules/note_list/note_list_bloc.dart';
import 'package:i_note_mobile/modules/note_list/note_list_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var routes = {
    '/': (context) =>
        BlocProvider(
          create: (_) => NoteListBloc(),
          child: NoteListWidget(),
        ),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _buildStartScreen(),
      routes: routes,
    );
  }

  Widget _buildStartScreen() {
    return Scaffold(
      appBar: AppBar(title: Text('iNote-Mobile')),
      body: NoteListWidget(),
    );
  }

  =
}
