  import 'dart:io';
  import 'package:flutter/services.dart';
  import 'package:flutter/material.dart';
  import 'package:splash_screen_view/SplashScreenView.dart';
  import 'package:supabase_flutter/supabase_flutter.dart';
  
  
  
  import 'package:myapp/src/pages/halamanregistrasi/page.dart';
  import 'package:teta_cms/teta_cms.dart';

  ///NOTE:
  ///if you have an error while running <flutter run> 
  ///run <flutter pub upgrade> and than <flutter run --no-sound-null-safety>
  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    await TetaCMS.initialize(
      token: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImZhaXowNmhpZGF5YXRAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsInByb2plY3RzIjpbMTI3NTI3LDEyNjg2MCwxMjY5MTAsMTI2OTExXSwiaW1hZ2UiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS0vQU9oMTRHaVItYUl1WDNmeVJYbUl0RjFmTmZfM210eHJyZ005RjJZT1h6bHRGdz1zOTYtYyIsIm5hbWUiOiJGYWl6IEhpZGF5YXQiLCJlbWl0dGVyIjoiVGV0YS1BdXRoIiwiaWF0IjoxNjU0MjUwMzI3LCJleHAiOjQ4MTAwMTAzMjd9.aIW6i6NhUyV6VbuqML-Vo5ZPL2O4jNDpGzmOueur8fE',
      prjId: 126860,
    );
    
      Supabase.initialize(
    url: 'https://sibksuxmtloxlwgvmnly.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNpYmtzdXhtdGxveGx3Z3Ztbmx5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTQxNTI0MDAsImV4cCI6MTk2OTcyODQwMH0.iqg-JRhwoGkFeZkrsNaslY-d-Wo1NaumfHCmlRfXs0I',
  );
  
    
    
    runApp(MyApp());
  }
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'bengkol',
        home: SplashScreenView(
          navigateRoute: PageHalamanRegistrasi(),
          duration: 2200,
          imageSize: 80,
          imageSrc: 'assets/teta-app.png',
          text: '',
          textType: TextType.NormalText,
          textStyle: TextStyle(
            fontSize: 30.0,
          ),
          backgroundColor: Colors.black,
        ),
      );
    }
  }
  