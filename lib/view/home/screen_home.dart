// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hive/hive.dart';
import 'package:students_app/core/colors.dart';
import 'package:students_app/core/constants.dart';
import 'package:students_app/model/student_model.dart';

import 'widgets/appbar_widget.dart';
import 'widgets/student_list_widget.dart';

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
      // backgroundColor: kBgColor,
      body: Column(
        children:const [
          kHeight40,

          //<<<<<AppBar>>>>>//
           Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: AppBarWidget(),
          ),
          //kHeight05,

          //<<<<<Student_List>>>>>//
          StudentListWidget(),
          kHeight20,
        ],
      ),
    );
  }
}
