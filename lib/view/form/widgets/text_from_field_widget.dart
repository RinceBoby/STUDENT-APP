import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../core/colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    required this.name,
    required this.prefixIcon,
    required this.keyboardType,
  }) : super(key: key);
  final String name;
  final IconData prefixIcon;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
