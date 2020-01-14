import 'package:flutter/material.dart';



void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:Scaffold(
        appBar: AppBar(
          title: const Text("Widgets of the week tutorial"),
        ),
        body:
        Center(child : children_1(),
          /*SafeArea(
          child: Container(color: Colors.red,width: 300, height: 300, child:Text(
              "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"),
        ),
        top : true,
        bottom: true,
          right: true,
        ),
        */
        ),
      ),
    );

  }
}

class children_1 extends StatefulWidget{

  children_1();

  @override
  _myfuture_state createState() => _myfuture_state();
}

class _myfuture_state extends State<children_1>{

  Future<String> _calculation = Future<String>.delayed(
    Duration(seconds: 10),
        () => 'Data Loaded',
  );

  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _calculation, // a previously-obtained Future<String> or null
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        List<Widget> children_1;

        if (snapshot.hasData) {
          children_1 = <Widget>[
            Icon(
              Icons.check_circle_outline,
              color: Colors.green,
              size: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text('Result: ${snapshot.data}'),
            )
          ];
        } else if (snapshot.hasError) {
          children_1 = <Widget>[
            Icon(
              Icons.error_outline,
              color: Colors.red,
              size: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text('Error: ${snapshot.error}'),
            )
          ];
        } else {
          children_1 = <Widget>[
            SizedBox(
              child: CircularProgressIndicator(),
              width: 60,
              height: 60,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text('Awaiting result...'),
            )
          ];
        }
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children_1,
          ),
        );
      },
    );
  }


}

/*
class SafeArea extends StatelessWidget{

} */