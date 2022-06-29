import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hive/hive.dart';
import 'package:students_app/model/student_model.dart';
import 'package:students_app/view/widgets/capitalise.dart';

import '../../../core/constants.dart';
import '../../widgets/cutsom_buttons.dart';
import 'text_button_widget.dart';
import 'text_from_field_widget.dart';

class AddStudentFormWidget extends StatelessWidget {
  AddStudentFormWidget({Key? key}) : super(key: key);

  //<<<<<Controllers>>>>>//
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController branchController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  //<<<<<Box>>>>>//
  Box<Student> studentBox = Hive.box<Student>(boxName);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeight20,

        //<<<<<Student_Image>>>>>//
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            kWidth50,
            //kWidth10,
            Neumorphic(
              padding: const EdgeInsets.all(2),
              style: NeumorphicStyle(
                color: const Color(0xFFDCE5F6),
                depth: 10,
                intensity: 0.8,
                shape: NeumorphicShape.convex,
                boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.circular(90),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 80,
                ),
              ),
            ),
            kWidth05,

            //<<<<<Camera_Button>>>>>//
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: CustomButton(
                icon: CupertinoIcons.camera_on_rectangle_fill,
                onTap: () {},
              ),
            ),
          ],
        ),

        kHeight20,

        //<<<<<Form>>>>>//
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Form(
            child: Column(
              children: [
                //<<<<<First_Name>>>>>//
                Neumorphic(
                  style: NeumorphicStyle(
                    color: const Color(0xFFDCE5F6),
                    depth: 8,
                    intensity: 0.9,
                    shape: NeumorphicShape.concave,
                    lightSource: LightSource.bottom,
                    boxShape: NeumorphicBoxShape.roundRect(
                      BorderRadius.circular(10),
                    ),
                  ),
                  child: TextFormFieldWidget(
                    controller: firstNameController,
                    name: "First Name",
                    prefixIcon: CupertinoIcons.person,
                    keyboardType: TextInputType.text,
                  ),
                ),
                kHeight10,

                //<<<<<Last_Name>>>>>//
                Neumorphic(
                  style: NeumorphicStyle(
                    color: const Color(0xFFDCE5F6),
                    depth: 8,
                    intensity: 0.9,
                    shape: NeumorphicShape.concave,
                    lightSource: LightSource.bottom,
                    boxShape: NeumorphicBoxShape.roundRect(
                      BorderRadius.circular(10),
                    ),
                  ),
                  child: TextFormFieldWidget(
                    controller: lastNameController,
                    name: "Last Name",
                    prefixIcon: CupertinoIcons.person_2,
                    keyboardType: TextInputType.text,
                  ),
                ),
                kHeight10,

                //<<<<<Branch>>>>>//
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Neumorphic(
                        style: NeumorphicStyle(
                          color: const Color(0xFFDCE5F6),
                          depth: 8,
                          intensity: 0.9,
                          shape: NeumorphicShape.concave,
                          lightSource: LightSource.bottom,
                          boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(10),
                          ),
                        ),
                        child: TextFormFieldWidget(
                          controller: branchController,
                          name: "Branch",
                          prefixIcon: CupertinoIcons.person_2_square_stack,
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ),
                    kWidth05,

                    //<<<<<Age>>>>>//
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.32,
                      child: Neumorphic(
                        style: NeumorphicStyle(
                          color: const Color(0xFFDCE5F6),
                          depth: 8,
                          intensity: 0.9,
                          shape: NeumorphicShape.concave,
                          lightSource: LightSource.bottom,
                          boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(10),
                          ),
                        ),
                        child: TextFormFieldWidget(
                          controller: ageController,
                          name: "Age",
                          prefixIcon: CupertinoIcons.list_number_rtl,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                  ],
                ),
                kHeight10,

                //<<<<<Mobile>>>>>//
                Neumorphic(
                  style: NeumorphicStyle(
                    color: const Color(0xFFDCE5F6),
                    depth: 8,
                    intensity: 0.9,
                    shape: NeumorphicShape.concave,
                    lightSource: LightSource.bottom,
                    boxShape: NeumorphicBoxShape.roundRect(
                      BorderRadius.circular(10),
                    ),
                  ),
                  child: TextFormFieldWidget(
                    controller: mobileController,
                    name: "Mobile No",
                    prefixIcon: CupertinoIcons.device_phone_portrait,
                    keyboardType: TextInputType.phone,
                  ),
                ),
                kHeight10,

                //<<<<<Email>>>>>//
                Neumorphic(
                  style: NeumorphicStyle(
                    color: const Color(0xFFDCE5F6),
                    depth: 8,
                    intensity: 0.9,
                    shape: NeumorphicShape.concave,
                    lightSource: LightSource.bottom,
                    boxShape: NeumorphicBoxShape.roundRect(
                      BorderRadius.circular(10),
                    ),
                  ),
                  child: TextFormFieldWidget(
                    controller: emailController,
                    name: "Email",
                    prefixIcon: CupertinoIcons.mail,
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                kHeight30,

                //<<<<<Submit_Button>>>>>//
                TextButtonWidget(
                  icon: CupertinoIcons.person_add_solid,
                  text: " Add Student",
                  onTap: () {
                    Student newStudent = Student(
                      name: firstNameController.text.capitalise() +
                          "" +
                          lastNameController.text.capitalise(),
                      branch: branchController.text.capitalise(),
                      age: int.parse(ageController.text),
                      mobile: int.parse(mobileController.text),
                      email: emailController.text,
                    );
                    studentBox.add(newStudent);
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
        kHeight20,
      ],
    );
  }
}
