import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:students_app/core/colors.dart';
import 'package:students_app/model/student_model.dart';
import 'package:students_app/splash_screen.dart';
import 'package:students_app/view/home/screen_home.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Directory directory = await getApplicationDocumentsDirectory(); //Directory
  Hive.init(directory.path); //Hive_intialized
  Hive.registerAdapter(StudentAdapter()); //Registering_adaptor
  await Hive.openBox<Student>(boxName); //Opening_HiveBox

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBgColor,
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
