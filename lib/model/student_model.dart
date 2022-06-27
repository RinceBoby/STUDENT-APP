import 'package:hive_flutter/hive_flutter.dart';

part 'student_model.g.dart';

@HiveType(typeId: 9)
class Student {
  @HiveField(0)
  final String firstName;

  @HiveField(1)
  final String lastName;

  @HiveField(2)
  final String branch;

  @HiveField(3)
  final int age;

  @HiveField(4)
  final String gender;

  @HiveField(5)
  final int mobile;

  @HiveField(6)
  final String email;

  Student({
    required this.firstName,
    required this.lastName,
    required this.branch,
    required this.age,
    required this.gender,
    required this.mobile,
    required this.email,
  });
}

const String boxName = "student";
