import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class newsService {

  final Dio dio;


  newsService(this.dio);
  Future<List<ArticleModel>> getNews ({required String category}) async {
    // Response response = await dio.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=0a247c32068d4c4abd6f662c3344eced");
    try{
      // Response response = await dio.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=0a247c32068d4c4abd6f662c3344eced&category=$category");
      Response response = await dio.get("https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=0a247c32068d4c4abd6f662c3344eced");

      Map <String,dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [] ;
      for (var article in articles){
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      print(articlesList);
      return articlesList;
    } catch (e){
      print('Error');
      return [];
    }
  }


}