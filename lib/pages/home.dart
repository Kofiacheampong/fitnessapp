import 'package:fitness_app/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];

  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _searchField(),
          SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  'Category',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                  height: 150, color: Colors.green, child: ListView.separated(
                    itemCount:categories.length ,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => SizedBox(width: 25,),
                    itemBuilder: (context, index) => {
                      return Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: categories[index].boxColor.widthOpacity(0.3)
                        ),
                      ),
                    },
                  ))
            ],
          )
        ],
      ),
    );
  }

  Container _searchField() {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color(0xff1d1617).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0)
      ]),
      child: TextField(
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            contentPadding: EdgeInsets.all(12.0),
            hintText: 'Search Pancake',
            hintStyle: TextStyle(color: Color(0xffdddada), fontSize: 14),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(
                'assets/icons/Search.svg',
              ),
            ),
            suffixIcon: SizedBox(
              width: 100,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 0.1,
                      indent: 10.0,
                      endIndent: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset('assets/icons/Filter.svg'),
                    ),
                  ],
                ),
              ),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide.none)),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        'Breakfast',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          width: 30,
          height: 30,
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10)),
          child: SvgPicture.asset(
            'assets/icons/Arrow - Left 2.svg',
            height: 30,
            width: 30,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
              width: 30,
              height: 30,
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xffF7F8F8),
                  borderRadius: BorderRadius.circular(10)),
              child: SvgPicture.asset(
                'assets/icons/dots.svg',
                height: 30,
                width: 30,
              )),
        )
      ],
    );
  }
}
