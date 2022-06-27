// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:students_app/core/constants.dart';
import 'package:students_app/view/widgets/cutsom_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDFE9FF),
      body: Column(
        children: [
          kHeight50,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  child: Icon(
                    Icons.add_outlined,
                    color: Colors.black
                    //Color(0xFF8E98AE),

                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
