// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_config/flutter_config.dart';

// import 'src/common/extensions/locale_x.dart';
// import 'src/common/utils/getit_utils.dart';
// import 'src/common/utils/hive_utils.dart';
// import 'src/common/utils/logger.dart';
// import 'src/core/presentation/cubits/auth_cubit/auth/auth_cubit.dart';
// import 'src/core/presentation/cubits/lang_cubit/lang_cubit.dart';
// import 'src/modules/app/app_router.dart';
// import 'src/modules/app/app_widget.dart';

// MARK: - Hello World
import 'package:flutter/material.dart';
import 'package:flutter_base/src/catch_error.dart';
import 'package:flutter_base/src/hello_singleton.dart';
import 'package:flutter_base/src/helloworld.dart';
import 'package:flutter_base/src/hello_class.dart';
import 'package:flutter_base/src/user.dart';

void main() {
  helloWorld();

  // Hello class
  var person = Person(name: 'Đình Đình');
  person.setYear(2019);
  debugPrint(person.toString());

  var cat = Cat(name: 'Kitty', age: 1);
  var dog = Dog(name: 'Lucky', age: 5);

  cat.talk();
  dog.talk();

  // OOP in Flutter
  final cat1 = CatAbstract(name: 'Kitty', age: 1);
  final dog1 = DogAbstract(name: 'Lucky', age: 5);
  makeAnimalNoise(cat1);
  makeAnimalNoise(dog1);

  cat1.growl();
  dog1.growl();

  final catImpl = CatImpl(name: 'Kitty', age: 1);
  catImpl.talk();
  catImpl.growl();

  // Enums
  LightBuldStatus.values.forEach((element) {
    debugPrint(element.toString());
  });

  // Factory keywork
  var s1 = Singleton();
  s1.ver = '0.1';

  var s2 = Singleton();
  s2.ver = '1.0';
  print('same object?: ${identical(s1, s2)}');
  print('s1 ver ${s1.ver}, s2 ver ${s2.ver}');

  // Cascade notation
  User()
    ..id
    ..name = 'Gạo'
    ..age = 3
    ..printAge();

  // Try - catch
  try {
    // const str = 'Hello World';
    const str = '3';
    int num = int.parse(str);
    print(num);
  } catch (e) {
    print(e.toString());
  }

  // Try on catch
  try {
    // const str1 = 'Hello World';
    const str1 = '7';
    int num1 = int.parse(str1);
    print(num1);
  } on FormatException {
    print('Exception: Invalid String');
  } catch (e) {
    print(e.toString());
  }

  // Catch Error
  mainCatch();
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   await FlutterConfig.loadEnvVariables();
//   await HiveUtils.setup();
//   await GetItUtils.setup();

//   logger.d('deviceLocale - ${LocaleX.deviceLocale.fullLanguageCode}');
//   logger.d('currentLocale - ${LocaleX.currentLocale.fullLanguageCode}');

//   runApp(
//     MultiBlocProvider(
//       providers: [
//         BlocProvider(create: (_) => getIt<AuthCubit>()),
//         BlocProvider(create: (_) => getIt<LangCubit>()),
//       ],
//       child: MultiBlocListener(
//         listeners: [
//           BlocListener<AuthCubit, AuthState>(listener: (context, state) {
//             final router = getIt<AppRouter>();
//             state.whenOrNull(
//                 authenticated: () => router.replaceAll([const HomeRoute()]),
//                 unauthenticated: () => router.replaceAll([const AuthRoute()]));
//           }),
//         ],
//         child: const AppWidget(),
//       ),
//     ),
//   );
// }
