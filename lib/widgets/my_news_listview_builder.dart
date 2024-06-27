import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/my_news_list_view.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../services/news_service.dart';



class my_news_list_view_builder extends StatefulWidget {

final String category;
  const my_news_list_view_builder({super.key, required this.category,});
  @override
  State<my_news_list_view_builder> createState() => _my_news_list_view_builderState();
}

class _my_news_list_view_builderState extends State<my_news_list_view_builder> {
  bool isLoading = true;
  var future;
  late final WebViewController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     future = newsService(Dio(),).getNews(category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    // return isLoading
    //     ? SliverFillRemaining(child: Center(child: CircularProgressIndicator()))
    //     : articles.isNotEmpty
    //         ? my_news_List_View(articles: articles)
    //         : Text('Ops something went wrong');
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot){
           if(snapshot.hasData) {
            return my_news_List_View(articles: snapshot.data!);
          }else if (snapshot.hasError){
            return Text('Ops something went wrong');
           }else{
             return SliverFillRemaining(child: Center(child: CircularProgressIndicator()));
           }

        } ,

    );
  }
}
