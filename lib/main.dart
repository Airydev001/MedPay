import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:med_pay/Features/Analytics/AnalyticsView.dart';
import 'package:med_pay/Features/Home/HomePage.dart';
import 'package:med_pay/Features/SingUp/SignUpView.dart';
import 'package:med_pay/Features/SingUp/sign_up001.dart';
import 'package:med_pay/Features/Transaction/Widgets/add_income_view.dart';
import 'package:med_pay/Features/onboarding/onboarding1.dart';
import 'package:med_pay/Features/password/forgot_password.dart';
import 'package:med_pay/Features/password/reset_password002.dart';
import 'package:med_pay/Features/password/reset_pasword001.dart';
import 'package:med_pay/Features/slider_screen.dart';
import 'package:med_pay/Features/slider_screen.dart';
import 'package:med_pay/Features/splash_screen.dart';
import 'package:med_pay/Features/splash_screen001.dart';
import 'package:med_pay/firebase_options.dart';
import 'package:med_pay/providers/auth_provider/auth_provider.dart';
import 'package:med_pay/providers/splash_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SplashScreenState()),
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
      ],
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
                return AnalyticsView();
                //Signup001();
              } else {
                return const SplashScreen();
              }
            },
          )),
    );
  }
}
