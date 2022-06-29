import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../core/colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    required this.name,
    required this.prefixIcon,
    required this.controller,
    required this.keyboardType,
  }) : super(key: key);
  final String name;
  final IconData prefixIcon;
  final TextInputType keyboardType;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: name,
        prefixIcon: Icon(prefixIcon),
        prefixIconColor: kGrey,
      ),
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
    );
  }
}
