import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:sample_login_project/login/presentation/screens/login_screen.dart';
import 'package:sample_login_project/register/presentation/screens/registration_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final routerDelegate = BeamerDelegate(
      locationBuilder: RoutesLocationBuilder(routes: {
    '/': (context, state, data) => const LoginScreen(),
    '/register': (context, state, data) => const RegistrationScreen(),
  }));

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Sample Login',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
    );
  }
}
