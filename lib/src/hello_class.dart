import 'package:flutter/material.dart';

class Person {
  String name; // public

  // late to field means that the field will be initialized when you use it for the first time.
  late int _year; // private

  // Init
  Person({required this.name});

  // getter
  int get year => _year;

  // setter
  void setYear(int year) {
    _year = year;
  }

  @override
  String toString() {
    return 'Person name: $name, year: $year';
  }
}

// Inheritance
class Animal {
  String name;
  int age;

  Animal({
    required this.name,
    required this.age,
  });

  void talk() {
    debugPrint('bla bla bla...');
  }
}

class Cat extends Animal {
  Cat({required String name, required int age}) : super(name: name, age: age);

  @override
  void talk() {
    debugPrint('meow');
  }
}

class Dog extends Animal {
  Dog({required String name, required int age}) : super(name: name, age: age);

  @override
  void talk() {
    debugPrint('bark');
  }
}

// abstract
abstract class AnimalAbstract {
  String name;
  int age;

  AnimalAbstract({this.name = '', this.age = 0});

  // no method body means you're defining an abstract method
  // abstract method must be overridden in implementation classes
  void talk();

  void growl() => debugPrint('$name grrrrr');
}

class CatAbstract extends AnimalAbstract {
  CatAbstract({
    required name,
    required age,
  }) : super(name: name, age: age);

  @override
  void talk() {
    debugPrint('[CatAbstract] meow');
  }
}

class DogAbstract extends AnimalAbstract {
  DogAbstract({
    required name,
    required age,
  }) : super(name: name, age: age);

  @override
  void talk() {
    debugPrint('[DogAbstract] bark');
  }
}

class CatImpl implements CatAbstract {
  CatImpl({required this.name, required this.age});

  @override
  int age;

  @override
  String name;

  @override
  void growl() {
    debugPrint('[CatImpl] grrrrr');
  }

  @override
  void talk() {
    debugPrint('[CatImpl] meow');
  }
}

makeAnimalNoise(AnimalAbstract animal) => animal.talk();

enum LightBuldStatus {
  on(1),
  off(0);

  final int value;
  const LightBuldStatus(this.value);

  @override
  String toString() => 'LightBuldStatus $value';
}
