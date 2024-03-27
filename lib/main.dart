import 'package:flutter/material.dart';
import 'package:med_pay/Features/Home/HomePage.dart';
import 'package:med_pay/Features/SingUp/SignUpView.dart';
import 'package:med_pay/Features/Transaction/Widgets/add_income_view.dart';
import 'package:med_pay/Features/splash_screen.dart';
import 'package:med_pay/providers/splash_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => SplashScreenState())],
      child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primaryColor: Colors.blue,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
              useMaterial3: true,
              scaffoldBackgroundColor: Colors.grey.shade100),
          home: Consumer<SplashScreenState>(
            builder: (context, state, _) {
              if (state.isInitialized) {
                return SignUpPage();
              } else {
                return const SplashScreen();
              }
            },
          )),
    );
  }
}
