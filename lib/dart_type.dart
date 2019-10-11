import 'package:flutter/material.dart';

//常用数据类型
class DataType extends StatefulWidget {
  @override
  _DataTypeState createState() => _DataTypeState();
}

class _DataTypeState extends State<DataType> {
  @override
  Widget build(BuildContext context) {
    _numType();
    _stringType();
    _boolType();
    _listType();
    _mapType();
    _tips();
    return Container(
      child: Text("请在控制台查看输出结果！",
          style: TextStyle(fontSize: 29, color: Colors.red)),
    );
  }

  //数字类型
  void _numType() {
    num num1 = -1.0; //数字类型的父类
    num num2 = 2; //是数字类型的父类
    int int1 = 3; //只能接受整数
    double d1 = 1.68; //双精度
    print("num:$num1 num:$num2 int: $int1 double: $d1");
    print(num1.abs()); //取绝对值
    print(num1.toInt()); //类型转换
    print(num1.toDouble()); //转成double
  }

  ///字符串使用
  _stringType() {
    String str1 = "字符串", str2 = "字符串2";
    String str3 = str1 + str2;
    String str4 = "str1: $str1 str2: $str2";
    String str5 = '常用数据类型，请查看控制台';
    print("$str3");
    print("$str4");

    ///常用方法
    ///字符串截取
    print(str5.substring(1, 5)); //截取字符串
    print(str5.indexOf('查看')); //查看字符在字符串中的位置
    print(str5.startsWith("常", 0)); //某个字符串是否在某个位置
    print(str5.replaceAll('常', '场')); //替换制定的字符串
    print(str5.contains('查看')); //字符是否在字符串内
    print(str5.split(',')); //把字符串分割返回一个到list
  }

//  布尔数据类型
  _boolType() {
    bool success = true, fail = false;
    print(success);
    print(fail);
    print(success || fail);
    print(success && fail);
  }

//  List集合
  _listType() {
    print('-----------------_listType--------');
    List list = [1, 2, 3, '集合']; //初始化添加元素
    print(list);
    List<int> listInt = [1, 2, 3, 4, 5];
    print(listInt);
//    listInt = list; //类型不一致，不能操作
    List listAdd = [];
    listAdd.add('list3');
    listAdd.addAll(list);
    print(listAdd);
    List list4 = List.generate(9, (i) => i * 3); //创建集合
    print(list4);

    ///集合遍历的几种方式
    for (int i = 0; i < list.length; i++) {
      print(list[i]);
    }
    for (var o in list) {
      print(o);
    }
    list.forEach((value) {
      print(value);
    });
    //remove
    print(list.removeLast());
    print(list.removeAt(2));
  }

  //map key => value
  _mapType() {
    print('-----------------_listType--------');
    Map message = {'name': 'ryan', 'age': 19};
    print(message);

    Map ages = {};
    ages['name'] = 'test';
    print(ages);

    //Map遍历的方式
    message.forEach((key, value) {
      print(key);
      print(value);
    });

    Map message2 = message.map((k, v) {
      //生成一个新的Map
      return MapEntry(v, k);
    });
    print(message2);

    for (var key in ages.keys) {
      print('$key ${message[key]}');
    }

    print(message.keys);
    print(message.values);
    print(message.containsKey('ryan')); //判断key在不在map中
    print(message.remove('name'));
  }

  ///科普小知识dynamic,var,object三者区别
  ///dynamic：是所有Dart对象的基础类型， 在大多数情况下，通常不直接使用它，
  ///通过它定义的变量会关闭类型检查，这意味着 dynamic x = 'hal';x.foo();
  ///这段代码静态类型检查不会报错，但是运行时会crash，因为x并没有foo()方法，所以建议大家在编程时不要直接使用dynamic；
  ///var：是一个关键字，意思是“我不关心这里的类型是什么。”，系统会自动推断类型runtimeType；
  ///Object：是Dart对象的基类，当你定义：Object o=xxx；时这时候系统会认为o是个对象，你可以调用o的toString()和hashCode()方法
  ///因为Object提供了这些方法，但是如果你尝试调用o.foo()时，静态类型检查会进行报错；
  ///综上不难看出dynamic与Object的最大的区别是在静态类型检查上；
  _tips() {
    /*
    * dynamic动态数据类型,会让语法数据类型检测失效，尽量避免使用
    * */
    dynamic x = 'hal';
    print(x.runtimeType);
    print(x);

    x = 123;
    print(x.runtimeType);
    print(x);

    /*
    * var 关键字，系统自动推断(不是数据类型)
    */
    var a = 'var'; //这里已推断出数据类型 不能改变了
    print(a.runtimeType);
    print(a);
/*
object,dart的基类,不能调用不存在的函数方法
*/

    Object o1 = '111';
    print(o1.runtimeType);
    print(o1);
  }
}
