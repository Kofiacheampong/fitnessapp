import 'package:flutter/material.dart';

class DietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calories;
  Color boxColor;
  bool viewIsSelected;

  DietModel(
      {required this.name,
      required this.iconPath,
      required this.level,
      required this.duration,
      required this.calories,
      required this.boxColor,
      required this.viewIsSelected});

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];

    diets.add(
      DietModel(
          name: 'Honey Pancake',
          iconPath: 'assets/icons/honey-pancakes.svg',
          level: 'Easy',
          duration: '30 mins',
          calories: '180kCal',
          viewIsSelected: true,
          boxColor: Color(0xff92A3FD)),
    );

    diets.add(DietModel(
        name: 'Canai Bread',
        iconPath: 'assets/icons/canai-bread.svg',
        level: 'Easy',
        duration: '20 mins',
        calories: '230kCal',
        boxColor: Color(0xffC58BF2),
        viewIsSelected: false));

    return diets;
  }
}
