import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
     MaterialApp(
        home: Scaffold(
          backgroundColor: Color(0xFF009393),
          appBar:
          AppBar(
            centerTitle: true,
            title:
            Text('8 Magic Balls'),
            backgroundColor: Color(0xFF016170),
          ),
        body: BallPage(),
        )
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  @override
  int ballno=1;
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                onPressed: ()
                {
                  setState(()
                      {
                        ballno= Random().nextInt(5)+1;
                      });
                },
                child: Image.asset('images/ball$ballno.png'),
              )
          )
        ],
      ),
    );
  }
}
