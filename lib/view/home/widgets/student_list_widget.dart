import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:students_app/model/student_model.dart';
import 'package:students_app/view/details/student_details.dart';

import '../../../core/colors.dart';
import '../../../core/constants.dart';
import '../../widgets/cutsom_buttons.dart';

class StudentListWidget extends StatefulWidget {
  const StudentListWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<StudentListWidget> createState() => _StudentListWidgetState();
}

class _StudentListWidgetState extends State<StudentListWidget> {
  //<<<<<Box>>>>>//
  Box studentBox = Hive.box<Student>(boxName);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ValueListenableBuilder(
        valueListenable: studentBox.listenable(),
        builder: (context, Box box, _) {
          if (box.isEmpty) {
            return Center(
              child: NeumorphicText(
                "No Students Added !",
                style: const NeumorphicStyle(
                  depth: 10,
                  intensity: 0.8,
                  color: kGrey,
                ),
                textStyle: NeumorphicTextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  //fontStyle: FontStyle.italic,
                ),
              ),
            );
          } else {
            return ListView.separated(
            
              separatorBuilder: (BuildContext context, index) => kHeight20,
              itemCount: box.length,
              itemBuilder: (context, index) {
                Student student = box.getAt(index);
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Neumorphic(
                    padding: const EdgeInsets.all(10),
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(10),
                      ),
                      lightSource: LightSource.top,
                      depth: 15,
                      intensity: 0.9,
                      color: kNeupColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //<<<<<Student_Image>>>>>//
                        Neumorphic(
                          padding: const EdgeInsets.all(2),
                          style: NeumorphicStyle(
                            color: const Color(0xFFDCE5F6),
                            depth: 10,
                            intensity: 0.8,
                            shape: NeumorphicShape.convex,
                            boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(60),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(3.0),
                            child: CircleAvatar(
                              radius: 30,
                            ),
                          ),
                        ),

                        Column(
                          children: [
                            //<<<<<Student_Name>>>>>//
                            NeumorphicText(
                              student.name,
                              style: const NeumorphicStyle(
                                depth: 10,
                                intensity: 0.8,
                                color: kGrey,
                              ),
                              textStyle: NeumorphicTextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            //<<<<<Branch_Name>>>>>//
                            NeumorphicText(
                              student.branch,
                              style: const NeumorphicStyle(
                                depth: 10,
                                intensity: 0.8,
                                color: kGrey,
                              ),
                              textStyle: NeumorphicTextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),

                        //<<<<<Go_To_Details>>>>>//
                        CustomButton(
                          icon: CupertinoIcons.forward,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  StudentDetails(student_details: {
                                  'name': student.name,
                                  "age" : student.age,
                                  "branch": student.branch,
                                  "mobile" : student.mobile,
                                  "email" : student.email,
                                },),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
