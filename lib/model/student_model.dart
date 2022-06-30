import 'package:hive_flutter/hive_flutter.dart';

part 'student_model.g.dart';

@HiveType(typeId: 1)
class Student {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final String batch;

  @HiveField(2)
  final int age;

  @HiveField(3)
  final int mobile;

  @HiveField(4)
  final String email;

  Student({
    required this.name,
    required this.batch,
    required this.age,
    required this.mobile,
    required this.email,
  });
}

const String boxName = "student";
