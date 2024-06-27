import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/my_news_card.dart';

class my_news_List_View extends StatelessWidget {
  final List<ArticleModel> articles;
   my_news_List_View({super.key, required this.articles });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(padding: EdgeInsetsDirectional.symmetric(horizontal: 16),
      sliver: SliverList(
          delegate: SliverChildBuilderDelegate(
              childCount: articles.length,
                  (context, index) => my_news_card(articleModel: articles[index],))),
    );
  }
}
