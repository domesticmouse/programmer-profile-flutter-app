import 'package:flutter/material.dart';
import 'package:programmerprofile/auth/view/forgot_password_page.dart';
import 'package:programmerprofile/auth/view/sign_up_page.dart';
import 'package:programmerprofile/auth/view/verification_page.dart';
import 'package:programmerprofile/splash.dart';
import 'package:programmerprofile/temp_home.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import 'auth/view/login_page.dart';
import 'auth/view/onboarding_page.dart';
import 'auth/view/reset_password_page.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized(); 
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),//OnboardingPage(),//SplashScreen(),
      routes: {
       // '/': (ctx) => SplashScreen(),
        OnboardingPage.routeName : (ctx) => OnboardingPage(),
        SignUpScreen.routeName : (ctx) => SignUpScreen(),
        LoginScreen.routeName : (ctx) => LoginScreen(),
        ForgotPasswordScreen.routeName : (ctx) => ForgotPasswordScreen(),
        
        Home.routeName : (ctx) => Home(),

      },
    );
  }
}
