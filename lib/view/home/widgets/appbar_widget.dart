import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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
          child: const Icon(
            CupertinoIcons.reply,
            color: Color(0xFF8E98AE),
          ),
        ),
        NeumorphicText(
          "STUDENTS",
          style: const NeumorphicStyle(
            depth: 10,
            intensity: 0.8,
            color: Color(0xFF8E98AE),
          ),
          textStyle: NeumorphicTextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        CustomButton(
          child: const Icon(
            CupertinoIcons.person_badge_plus,
            color: Color(0xFF8E98AE),
          ),
        ),
      ],
    );
  }
}
