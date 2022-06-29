import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:students_app/core/colors.dart';
import 'package:students_app/core/constants.dart';
import 'package:students_app/view/widgets/cutsom_buttons.dart';

import '../form/widgets/text_button_widget.dart';
import 'widget/details_text_widget.dart';

class StudentDetails extends StatelessWidget {
   StudentDetails({Key? key,required this.student_details}) : super(key: key);

   Map student_details = {};

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
                  "Student Name",
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

          //<<<<<Student_Image>>>>>//
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

          //<<<<<Student_Details>>>>>//
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          DetailsTextWidget(text: "Name     :  "),
                          DetailsTextWidget(text: student_details['name']),
                        ],
                      ),
                      Row(
                        children: [
                          DetailsTextWidget(text: "Branch   : "),
                          DetailsTextWidget(text: student_details['branch']),
                        ],
                      ),
                      Row(
                        children: [
                          DetailsTextWidget(text: "Age         : "),
                          DetailsTextWidget(
                            text: student_details['age'].toString(),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          DetailsTextWidget(text: "Mobile    : "),
                          DetailsTextWidget(text: student_details['mobile'].toString()),
                        ],
                      ),
                      Row(
                        children: [
                          DetailsTextWidget(text: "Email      : "),
                          DetailsTextWidget(text: student_details['email']),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          kHeight20,

          //<<<<<Buttons>>>>>//
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width*0.4,
                child: TextButtonWidget(
                  icon: Icons.edit_rounded,
                  text: " Edit",
                  onTap: (){},
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.4,
                child: TextButtonWidget(
                  icon: CupertinoIcons.delete_simple,
                  text: " Delete",
                  onTap: (){},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
