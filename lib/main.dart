import 'package:flutter/material.dart';
import 'package:flutter_dart/dart_type.dart';
import 'package:flutter_dart/function_learn.dart';
import 'package:flutter_dart/generic_learn.dart';
import 'package:flutter_dart/oop_main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter必备Dart基础',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'flutter必备Dart基础'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
//    _oopLeanStudy();
//    _functionLearn();
  _genericLearn();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: ListView(
        children: <Widget>[
//          DataType()
        ],
      )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _oopLeanStudy() {
    print('lllllllllllll-----------llllllllll');
    Logger log1 = Logger();
    Logger log2 = Logger();
    print(log1 == log2);
    print('lllllllllllll-----------llllllllll');

    Student.doprint('test0007');
//创建Student的对象
  Student stu1 = Student('清华', 'Jack', 18);
  stu1.school = '985';
  print(stu1.toString());

  Student stu2 = Student('北大', 'Tom', 16,city: '重庆',country: '中国');
  print(stu2);

  StudyFlutter studyFlutter = StudyFlutter();
  studyFlutter.study();
  }

  void _functionLearn(){
    TestFunction testFunction = TestFunction();
    testFunction.start();
  }

  void _genericLearn(){
    TestGeneric testGeneric = TestGeneric();
    testGeneric.start();
  }

}
