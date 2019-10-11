import 'package:flutter_dart/oop_main.dart';

class TestGeneric{
  void start(){
  Cache<String>cache1 = Cache();
  //泛型作用：类型检查约束类比：List<String>
  cache1.setItem('cache1', 'cache1');
  String string1 = cache1.getItem('cache1');
  print(string1);

  Cache<int>cache2 = Cache();
  //泛型作用：类型检查约束类比：List<String>
  cache2.setItem('cache2', 12);
  int string2 = cache2.getItem('cache2');
  print(string2);

  ///调用泛型类
    Member<Student>member = Member(Student('', '', 16));
    print(member.fixedName());
  }
}

///创建一个泛型类
///泛型：
///通俗理解：泛型主要是解决类、接口、方法的复用性、以及对不特定数据类型的支持

///泛型类
///泛型作用：提高代码服用度
class Cache<T>{
  static final Map<String, Object> _cache = Map();
  void setItem(String key, T value){
    _cache[key] = value;
  }
  //创建泛型getter方法
  T getItem(String key){
    return _cache[key];
  }

}

///有时候你在实现类似通用接口的泛型中，期望的类型是某些特定类型时，这时可以使用类型约束

class Member<T extends Person>{
  T _person;
  ///泛型作用：约束参数类型
  Member(this._person);
  String fixedName(){
    return 'fixed:${_person.name}';
  }

}
