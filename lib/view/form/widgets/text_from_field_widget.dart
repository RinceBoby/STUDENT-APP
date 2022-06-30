import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../core/colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    required this.name,
    required this.prefixIcon,
    required this.controller,
    required this.keyboardType,
    required this.validator,
  }) : super(key: key);
  final String name;
  final IconData prefixIcon;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final FormFieldValidator validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      maxLength: (name == "Mobile No") ? 10 : null,
      decoration: InputDecoration(
        labelText: name,
        prefixIcon: Icon(prefixIcon),
        prefixText: (name == "Mobile No") ? '+91' : null,
        prefixIconColor: kGrey,
        counterText: "",
      ),
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
    );
  }
}
