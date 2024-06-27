import 'package:flutter/material.dart';
import 'package:news_app/widgets/my_category_view.dart';

import '../models/try_my_category_model.dart';

class myCategoryCard extends StatelessWidget {
  myCategoryCard({super.key, required this.category});
  final myCategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(category: category.categoryName,);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Container(
          width: 250,
          height: 133.3,
          child: Center(
            child: Text(
              textAlign: TextAlign.center,
              category.categoryName,
              style: TextStyle(
                fontFamily: 'Sacramento',
                color: Colors.white,
                fontSize: 48,
              ),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(category.categoryImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
