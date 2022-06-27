// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hive/hive.dart';
import 'package:students_app/core/constants.dart';
import 'package:students_app/model/student_model.dart';

import 'widgets/appbar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //<<<<<Hive_box>>>>>//
  Box studentBox = Hive.box<Student>(boxName);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDFE9FF),
      body: Column(
        children: [
          //
          //<<<<<AppBar>>>>>//
          kHeight30,
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: AppBarWidget(),
          ),
          Container(),
        ],
      ),
    );
  }
}
