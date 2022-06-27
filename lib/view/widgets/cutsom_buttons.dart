import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      padding: const EdgeInsets.all(2),
      style: const NeumorphicStyle(
        color: Color(0xFFDCE5F6),
        depth: 10,
        intensity: 0.8,
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.circle(),
      ),
      child: NeumorphicButton(
        minDistance: -10,
        onPressed: () {},
        padding: const EdgeInsets.all(15),
        style: const NeumorphicStyle(
          color: Color(0xFFE3ECFD),
          depth: 10,
          intensity: 0.8,
          shape: NeumorphicShape.convex,
          boxShape: NeumorphicBoxShape.circle(),
        ),
        child: child,
      ),
    );
  }
}
