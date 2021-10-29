import 'package:bloc_pattern_prac/src/bloc_pattern/bloc/count_bloc.dart';
import 'package:bloc_pattern_prac/src/bloc_pattern/components/count_view.dart';
import 'package:flutter/material.dart';

CountBloc countBloc;

class BlocDisplayWidget extends StatefulWidget {
  BlocDisplayWidget({Key key}) : super(key: key);

  @override
  _BlocDisplayWidgetState createState() => _BlocDisplayWidgetState();
}

class _BlocDisplayWidgetState extends State<BlocDisplayWidget> {
  final CountBloc countBloc = CountBloc();
  @override
  void dispose() {
    super.dispose();
    countBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bloc 패턴"),
      ),
      body: CountView(countBloc: countBloc),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          countBloc.add();
        },
      ),
    );
  }
}
