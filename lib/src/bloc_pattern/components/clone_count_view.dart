import 'package:bloc_pattern_prac/src/bloc_pattern/ui/bloc_display_widget.dart';
import 'package:flutter/material.dart';

class CloneCountView extends StatelessWidget {
  const CloneCountView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder(
        stream: countBloc.count,
        initialData: 0,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Text(
              snapshot.data.toString(),
              style: TextStyle(fontSize: 80),
            );
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
