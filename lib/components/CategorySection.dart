import 'package:fitness/components/CategoryTile.dart';
import 'package:fitness/models/category_model.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories({super.key});
  List<CategoryModel> category = CategoryModel.getCategories();
  @override
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            "Categories",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black54),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 150,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              width: 25,
            ),
            padding: const EdgeInsets.only(left: 20, right: 20),
            itemBuilder: (context, index) {
              return CategoryTile(
                  color: category[index].boxColor,
                  name: category[index].name,
                  icon: category[index].iconPath);
            },
            scrollDirection: Axis.horizontal,
            itemCount: category.length,
          ),
        )
      ],
    );
  }
}
