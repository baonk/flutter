import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Example!',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        }),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => MyHomePage(),
        "/second" : (context) => SecondScreen()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("My Home Page")
      ),
      body: Center(
          child: RaisedButton(
            child: Text("Press to go to second screen!"),
            onPressed: () {
              Navigator.pushNamed(context, "/second");
              /*Navigator.push(context,
                  MaterialPageRoute(builder: (_) => SecondScreen())
                  *//*PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) {
                      return SecondScreen();
                    },
                    transitionsBuilder: (context, animation1, animation2, child) {
                      return FadeTransition(
                        opacity: animation1,
                        child: child,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 2000),
                  ),*//*
              );*/
            },

          )
      ),
      backgroundColor: Colors.greenAccent,
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sencond screen here!"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("Click to go back home!"),
            onPressed: () => Navigator.of(context).pop()
        ),
      ),
      backgroundColor: Colors.deepPurpleAccent,
    );
  }
}

