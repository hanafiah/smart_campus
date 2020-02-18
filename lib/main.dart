import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main(){
  runApp(new MaterialApp(
    home: new Splash(),
  ));
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 14,
      navigateAfterSeconds: new MyApp(),
      title: new Text('Smart Campus',
        style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.deepPurple
        ),
      ),
      image: new Image.asset('images/LogoUiTM.png'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 160.0,
//      onClick: ()=>print("Flutter Egypt"),
      loaderColor: Colors.deepPurple,
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('UiTM Smart Campus'),
          ),
          body: Container(

          ),
        ),

    );
  }
}
