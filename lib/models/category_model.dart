import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  String boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(
      CategoryModel(
          name: 'Salad',
          iconPath: 'assets/icons/plate.svg',
          boxColor: Color(0xff92A3FD)),
    );

    categories.add(
      CategoryModel(
          name: 'Cake',
          iconPath: 'assets/icons/pancakes.svg',
          boxColor: Color(0xffc58bf2)),
    );

    categories.add(
      CategoryModel(
          name: 'Pies',
          iconPath: 'assets/icons/pie.svg',
          boxColor: Color(0xff92A3FD)),
    );

    categories.add(
      CategoryModel(
          name: 'Smoothies',
          iconPath: 'assets/icons/orange-snacks.svg',
          boxColor: Color(0xff92A3FD)),
    );
  }
}
