import 'package:flutter/material.dart';

void main() => runApp(CounterApp());

class CounterApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counte',
      home: CouterWidget(),
    );
  }
}

class CouterWidget extends StatefulWidget {
    @override
    CounterState createState() => CounterState();
}

class CounterState extends State<CouterWidget> {

  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,),
      body: Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times'),
            Text('$_count', style: Theme.of(context).textTheme.display1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(child: Text('Increment'), shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(1.0),
                    side: BorderSide(color: Colors.red)
                ), onPressed: _increment, ),
                MaterialButton(child: Text('Decrement'), shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(1.0),
                    side: BorderSide(color: Colors.red)
                ), onPressed: _decrement,),

              ],
            ),

          ],
        ),
      ),

    );
  }




}