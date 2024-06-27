import 'package:flutter/material.dart';
import 'package:news_app/models/try_my_category_model.dart';
import 'package:news_app/widgets/my_category_card.dart';

class my_category_card_list_view extends StatelessWidget {
   my_category_card_list_view({
    super.key,
  });
  List<myCategoryModel> myCategoryList = [
    myCategoryModel(
        categoryName: "Business", categoryImage: "assets/business.png"),
    myCategoryModel(
        categoryName: "Entertainment",categoryImage: "assets/entertaiment.png"),
    myCategoryModel(
        categoryName: "Technology", categoryImage: "assets/technology.jpeg"),
    myCategoryModel(
        categoryName: "Sports", categoryImage: "assets/sports.png"),
    myCategoryModel(
        categoryName: "Science", categoryImage: "assets/science.png"),
    myCategoryModel(
        categoryName: "Health", categoryImage: "assets/health.png"),
    myCategoryModel(
        categoryName: "General", categoryImage: "assets/general.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 133.3,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index){
          return myCategoryCard(category: myCategoryList[index]);
        },
        scrollDirection: Axis.horizontal,
        itemCount: myCategoryList.length,
      ),
    );
  }
}