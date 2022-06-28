import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:students_app/core/colors.dart';
import 'package:students_app/view/form/entry_form.dart';

import '../../widgets/cutsom_buttons.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          icon: CupertinoIcons.reply,
          onTap: ()=>Navigator.pop(context),
        ),
        NeumorphicText(
          "STUDENTS",
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
          icon: CupertinoIcons.person_badge_plus,
          onTap:()=> Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>const EntryForm(),
            ),
          ),
        ),
      ],
    );
  }
}
