import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:students_app/view/details/student_details.dart';

import '../../../core/colors.dart';
import '../../../core/constants.dart';
import '../../widgets/cutsom_buttons.dart';

class StudentListWidget extends StatelessWidget {
  const StudentListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 20,
        itemBuilder: (context, index) => Padding(
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
                  child:const Padding(
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
                      "Student Name",
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
                      "Branch",
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
                        builder: (context) => const StudentDetails(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        separatorBuilder: (BuildContext context, index) => kHeight20,
      ),
    );
  }
}
