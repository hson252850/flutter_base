void helloWorld() {
  // Data Types

  // int
  int a = 7;
  print('Value of a = $a');

  // double
  double d = 9.9;
  print('Value of d = $d');

  // boolean
  bool result = true;
  print('Value of result = $result');

  // String
  String string = 'Hello, Son Phan';
  print(string);

  // StringBuffer
  StringBuffer stringBuffer = StringBuffer();
  stringBuffer.write('Demo App say Hi: ');
  stringBuffer.write('Son Phan');
  print('Value of stringBuffer = $stringBuffer');

  // RegExp
  RegExp re = RegExp(r'^[a-zA-Z0-9]+$');
  String str1 = 'gao';
  String str2 = 'gao!';
  print('RegExp: match ${re.hasMatch(str1)}');
  print('RegExp: not match ${re.hasMatch(str2)}');

  // DateTime
  DateTime dateTime = DateTime.now();
  print('Current date and time = $dateTime');

  // Dynamic: var or dynamic
  var x = 'Hello World';
  var y = 5;
  var z = true;
  var arr = <int>[];

  x += ', Son Phan';
  y += 5;
  z = false;
  arr.add(1);

  print('Value of x = $x');
  print('Value of y = $y');
  print('Value of z = $z');
  print('Value of arr = $arr');

  var arr1 = <String>['A', 'B'];
  arr1.add('C');
  arr1.addAll({'D', 'E'});
  arr1.remove('A');
  arr1.insert(0, 'New');
  print('Value of arr1 = $arr1');

  // Set
  Set<int> set = Set();
  set.add(3);
  print(set);

  set.add(7);
  print(set);

  set.add(7); // won't get added!
  print(set);

  // Map
  Map<String, dynamic> map = {}; // key: string, value: any
  map['name'] = 'Son';
  map['address'] = 'Tan Phu';
  print(map);
}
