import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/webview_screen.dart';

class my_news_card extends StatelessWidget {
  const my_news_card({
    super.key, required this.articleModel,
  });
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>WebViewScreen( articleUrl: articleModel.url,),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: articleModel.image != null ?  Image.network(articleModel.image! ,fit: BoxFit.fill,)
                  : Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS89oTOleTgYvvOuZl3zKWoSfG8Y3Ws2lXGEQ&s")

            ),
            SizedBox(
              height: 12,
            ),
            Text(
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                  fontFamily: "Urbanist",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              articleModel.title,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                  fontFamily: "Urbanist",
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey),
              articleModel.subTitle ?? '',
            ),
          ],
        ),
      ),
    );
  }
}