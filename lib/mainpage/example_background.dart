import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExampleBackgroundWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:<Widget>[
        Image.asset('assets/images/bg.jpg'),
        Text('Example Blank Page', style: TextStyle(color: Colors.amberAccent),),
      ],
    
    );

  }
}

