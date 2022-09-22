// Factory constructor, Singleton

class Singleton {
  static final Singleton _shared = Singleton._internal();
  factory Singleton() {
    return _shared;
  }

  Singleton._internal();

  late String ver;
}
