import 'package:flutter/material.dart';

enum LevelLesson { beginer, intermidate, advanced }

extension EnumLessonToString on LevelLesson {
  String enumToString() {
    switch (this) {
      case LevelLesson.beginer:
        return 'Beginer';
      case LevelLesson.intermidate:
        return 'Intermidate';
      default:
        return 'Advanced';
    }
  }

  double enumToDouble() {
    switch (this) {
      case LevelLesson.beginer:
        return .3;
      case LevelLesson.intermidate:
        return .7;
      default:
        return 1.0;
    }
  }
}

class LessonModel {
  final String title;
  final String description;
  final IconData icon;
  final LevelLesson level;
  final int price;

  const LessonModel({
    required this.title,
    required this.description,
    required this.icon,
    required this.level,
    required this.price,
  });
}

const String dummyDescription =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

List<LessonModel> lessons = [
  LessonModel(
    title: 'Introduction to Driving',
    description: dummyDescription,
    icon: Icons.drive_eta,
    level: LevelLesson.beginer,
    price: 20,
  ),
  LessonModel(
    title: 'Observation at Junctions',
    description: dummyDescription,
    icon: Icons.air,
    level: LevelLesson.beginer,
    price: 25,
  ),
  LessonModel(
    title: 'Reverse parallel Parking',
    description: dummyDescription,
    icon: Icons.park_outlined,
    level: LevelLesson.intermidate,
    price: 20,
  ),
  LessonModel(
    title: 'Reversing around the corner',
    description: dummyDescription,
    icon: Icons.warning,
    level: LevelLesson.intermidate,
    price: 25,
  ),
  LessonModel(
    title: 'Incorrect Use of Signal',
    description: dummyDescription,
    icon: Icons.map,
    level: LevelLesson.advanced,
    price: 50,
  ),
  LessonModel(
    title: 'Engine Challenges',
    description: dummyDescription,
    icon: Icons.engineering,
    level: LevelLesson.advanced,
    price: 50,
  ),
  LessonModel(
    title: 'Self Driving Car',
    description: dummyDescription,
    icon: Icons.safety_divider,
    level: LevelLesson.advanced,
    price: 50,
  ),
];
