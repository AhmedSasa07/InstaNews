import 'package:flutter/material.dart';
import 'package:news_app/widgets/my_news_listview_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          category,
          style: TextStyle(
              fontFamily: 'Urbanist',
              color: Colors.yellowAccent,
              fontSize: 36,
              fontWeight: FontWeight.bold),
        ),
      ),
      body:  CustomScrollView(
        slivers: [
         my_news_list_view_builder(category: category,)
        ],
      ),
    );
  }
}
