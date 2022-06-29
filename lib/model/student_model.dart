import 'package:hive_flutter/hive_flutter.dart';

part 'student_model.g.dart';

@HiveType(typeId: 9)
class Student {
  @HiveField(0)
  final String name;

  @HiveField(2)
  final String branch;

  @HiveField(3)
  final int age;

  @HiveField(4)
  final int mobile;

  @HiveField(5)
  final String email;

  Student({
    required this.name,
    required this.branch,
    required this.age,
    required this.mobile,
    required this.email,
  });
}

const String boxName = "student";
