import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hive/hive.dart';
import 'package:students_app/core/colors.dart';
import 'package:students_app/core/constants.dart';
import 'package:students_app/model/student_model.dart';
import 'package:students_app/view/widgets/cutsom_buttons.dart';

import '../form/widgets/text_button_widget.dart';
import 'widget/details_text_widget.dart';

class StudentDetails extends StatefulWidget {
  StudentDetails({
    Key? key,
    required this.student_details,
    required this.index,
  }) : super(key: key);

  int index;
  Map student_details = {};

  @override
  State<StudentDetails> createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails> {
  Box studentBox = Hive.box<Student>(boxName);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: Column(
        children: [
          kHeight40,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  icon: Icons.arrow_back_rounded,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                NeumorphicText(
                  widget.student_details["name"],
                  style: const NeumorphicStyle(
                    depth: 10,
                    intensity: 0.8,
                    color: kGrey,
                  ),
                  textStyle: NeumorphicTextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomButton(
                  icon: Icons.more_vert,
                  onTap: () {},
                ),
              ],
            ),
          ),
          kHeight40,

          //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<*Student_Image*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>//
          Neumorphic(
            padding: const EdgeInsets.all(2),
            style: NeumorphicStyle(
              color: const Color(0xFFDCE5F6),
              depth: 10,
              intensity: 0.8,
              shape: NeumorphicShape.convex,
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(140),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 120,
              ),
            ),
          ),
          kHeight20,

          //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<*Student_Details*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>//
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Neumorphic(
              padding: const EdgeInsets.all(2),
              style: NeumorphicStyle(
                color: const Color(0xFFDCE5F6),
                depth: 10,
                intensity: 0.8,
                shape: NeumorphicShape.convex,
                boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.circular(10),
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(10),

                  //<<<<<Student_Details>>>>>//
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          DetailsTextWidget(text: "Name"),
                          DetailsTextWidget(text: "Batch"),
                          DetailsTextWidget(text: "Age"),
                          DetailsTextWidget(text: "Mobile"),
                          DetailsTextWidget(text: "Email"),
                        ],
                      ),
                      Column(
                        children: const [
                          DetailsTextWidget(text: ":"),
                          DetailsTextWidget(text: ":"),
                          DetailsTextWidget(text: ":"),
                          DetailsTextWidget(text: ":"),
                          DetailsTextWidget(text: ":"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DetailsTextWidget(
                              text: widget.student_details['name']),
                          DetailsTextWidget(
                              text: widget.student_details['batch']),
                          DetailsTextWidget(
                              text: widget.student_details['age'].toString()),
                          DetailsTextWidget(
                              text:
                                  widget.student_details['mobile'].toString()),
                          DetailsTextWidget(
                              text: widget.student_details['email']),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          kHeight20,

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<*Edit_Buttons*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>//
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: TextButtonWidget(
                  icon: Icons.edit_rounded,
                  text: " Edit",
                  onTap: () {},
                ),
              ),
              //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<*Delete_Buttons*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>//
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: TextButtonWidget(
                  icon: CupertinoIcons.delete_simple,
                  text: " Delete",
                  onTap: () {
                    //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<*Delete_Function*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>//
                    studentBox.deleteAt(widget.index);

                    //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<*Snackbar*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>//
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: NeumorphicText(
                          "Student Deleted Successfully",
                          style: const NeumorphicStyle(
                            depth: 10,
                            intensity: 0.8,
                            color: Colors.redAccent,
                          ),
                          textStyle: NeumorphicTextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor: kBgColor,
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 6.0,
                      ),
                    );
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
