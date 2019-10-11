class Student extends Person {
  ///: super(name, age);初始化列表 先初始化父类然后才能初始化本类
  String _school; //通过下划线来标识私有变量和字段
  final String city;
  String country;
  String name;

  ///构造方法
  ///通过this._school初始化自有参数
  ///name,age交给父类进行初始化
  ///{}定义默认参数，必须是可选参数
  ///city是可选参数
  ///country是默认参数
  Student(this._school, String name, int age,
      {this.city, this.country = 'china'})
      : //初始化列表：除了调用父类构造器，在子类构造器方法体之前，你也可以初始化实例变量，不同的初始化变量之间用逗号隔开
        name = '$country.$city',
        //如果父类没有默认构造方法(无参构造方法)，则需要在初始列表中调用父类的构造方法进行初始化
        super(name, age) {
    //设置构造方法的方法体
    print('构造方法体不是必须的');
  }

  //命名构造方法：[类名+.+方法名]
  //使用命名构造方法为类实现多个构造方法
  Student.cover(Student stu, this.city) : super(stu.name, stu.age) {
    print('命名构造方法');
  }

  @override
  String toString() {
    return 'name: $name school:${this._school},city:$city,country: $country ${super.toString()}';
  }

  //get方法调取私有字段(可以为私有字段设置getter来让外界获取到私有字段)
  String get school => _school;

  //可以为私有字段设置setter来控制外界对私有字段的修改
  set school(String value) {
    _school = value;
  }

  //静态方法 类名+方法调用
  static doprint(String str) {
    print('doprint:$str');
  }

  //命名工厂构造方法:factory[类名+.+方法名]
  //它可以有返回值，而且不需要将类的final变量作为参数，是提供一种灵活获取类对象的方式
  factory Student.stu(Student stu) {
    return Student(stu._school, stu.name, stu.age);
  }
}

///工厂构造方法演示demo
class Logger {
  //创建静态变量
  static Logger _cache;

  //工厂构造方法：
  //不仅仅是构造方法，更是一种模式
  //有的时候为了返回一个之前已经创建的缓存对象，原始的构造方法已经不能满足需求
  //那么可以使用工厂模式来定义构造方法
  factory Logger() {
    if (_cache == null) {
      _cache = Logger._test();
    }
    return _cache;
  }

  Logger._test();

  void log(String msg) {
    print(msg);
  }
}

/*
* 定义一个Dart类，所以类都继承自object
* */

class Person {
  ///定义变量
  String name;
  int age;

  ///类的构造方法，初始化类的变量(初始化方法),标准构造方法
  Person(this.name, this.age);

  ///重载包括Object的方法（多态）
  @override
  String toString() {
    // TODO: implement toString
    return 'name:$name, age:$age';
  }
}

///继承自抽象类必须要实现抽象类里面的抽象方法
class StudyFlutter extends Study {
  @override
  void study() {
    print('Learning Flutter');
  }
}

///使用abstract来修饰一个抽象类，该类不能被实例化，抽象类在定义接口的时候十分有用，其中抽象中也包含一些实现
///抽象类可以有抽象方法，也可以没有，如果有抽象方法，一定要标注为抽象方法
abstract class Study {
  //可以有不包括方法体的方法
  void study();
}

///添加特性：mixins
///mixins 是在多个类层次结构中重用代码的一种方式
///要使用mixins,在with关键字后面跟上一个或多个mixin的名字（多个用逗号分割）,并且with要在extends之后
///mixins的特征：实现mixin，就创建一个继承Object类的子类（不能继承其他类），不声明任何构造方法，不调用super

class Textmixins extends Person with Study{
  Textmixins(String name, int age) : super(name, age);

  @override
  void study() {
    // TODO: implement study
  }

}