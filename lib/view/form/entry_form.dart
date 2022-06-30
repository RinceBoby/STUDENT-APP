import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:students_app/core/constants.dart';
import 'package:students_app/view/widgets/cutsom_buttons.dart';

import '../../core/colors.dart';
import 'widgets/add_student_form_widget.dart';

class EntryForm extends StatelessWidget {
  const EntryForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: Column(
        children: [
          kHeight30,

          //<<<<<AppBar>>>>>//
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Row(
              children: [
                CustomButton(
                  icon: Icons.arrow_back_rounded,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Neumorphic(
                      padding: const EdgeInsets.all(2),
                      style: NeumorphicStyle(
                        color: kBgColor,
                        depth: 10,
                        intensity: 0.8,
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(10),
                        ),
                      ),

                      //<<<<<Entry_From>>>>>//
                      child: AddStudentFormWidget(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
