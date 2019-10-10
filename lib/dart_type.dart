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
}
