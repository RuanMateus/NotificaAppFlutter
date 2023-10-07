import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notifica_app/assets/colors/colors.dart';
import 'package:notifica_app/pages/createAccount_page.dart';
import 'package:notifica_app/pages/home_page.dart';
import 'package:notifica_app/pages/login_page.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(routes: <RouteBase>[
  GoRoute(
    path: '/',
    builder: (BuildContext context, GoRouterState state) {
      return const LoginPage();
    },
  ),
  GoRoute(
    path: '/createAccount',
    builder: (BuildContext context, GoRouterState state) {
      return const CreateAccountPage();
    },
  ),
  GoRoute(
    path: '/home',
    builder: (BuildContext context, GoRouterState state) {
      return const HomePage();
    },
  ),
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppNotificaColors.greenApp,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
    );
  }
}
