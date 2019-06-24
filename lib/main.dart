import 'package:calendar_tester/first_challenge/calendar_carousel.dart';
import 'package:calendar_tester/first_challenge/clean_calendar.dart';
import 'package:calendar_tester/first_challenge/table_calendar.dart';
import 'package:calendar_tester/second_challenge/calendar_carousel.dart';
import 'package:calendar_tester/second_challenge/table_calendar.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Calendar Tester',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Calendar Test'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text('CHALLENGE 1', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              Center(child: Text('Calendar Carousel')),
              Container(
                margin: EdgeInsets.all(16.0),
                color: Colors.blue,
                child: CalendarCarouselExample(),
              ),
              Center(child: Text('Table Calendar')),
              Container(
                margin: EdgeInsets.all(16.0),
                color: Colors.blue,
                child: TableCalendarExample(),
              ),
              Center(child: Text('Clean Calendar')),
              Container(
                margin: EdgeInsets.all(16.0),
                color: Colors.blue,
                height: 420,
                child: CleanCalendarExample(),
              ), //
              Center(
                child: Text('CHALLENGE 2', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              Center(child: Text('Calendar Carousel')),
              Container(
                margin: EdgeInsets.all(16.0),
                color: Color(0xff465466),
                child: CalendarCarouselExample2(),
              ),
              Center(child: Text('Table Calendar')),
              Container(
                margin: EdgeInsets.all(16.0),
                color: Color(0xff465466),
                child: TableCalendarExample2(),
              ),
            ],
          ),
        ));
  }
}
