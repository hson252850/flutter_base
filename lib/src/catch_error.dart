import 'dart:async';

Future<String> one() => Future.value('from one');
Future<String> two() => Future.error('error from two');
Future<String> three() => Future.value('from three');
Future<String> four() => Future.value('from four');

void mainCatch() {
  one()
      .then((_) => two())
      .then((_) => three())
      .then((_) => four())
      .then((value) => value.length)
      .catchError((e, stackTrace) {
    print('Got error: $e');
  }).then((value) {
    print('The value is $value');
  });
}
