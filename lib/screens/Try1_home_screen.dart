import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/widgets/my_category_List_view.dart';
import 'package:news_app/widgets/my_news_listview_builder.dart';
class try1_home_screen extends StatelessWidget {
  try1_home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFfafafa),
          appBar: AppBar(
            elevation: 0,
            leading: Image.asset("assets/logo.png"),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Insta',
                  style: TextStyle(
                      fontFamily: 'Sacramento',
                      color: Colors.black,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'News',
                  style: TextStyle(
                      fontFamily: 'Sacramento',
                      color: Colors.yellowAccent,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          body: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              // SliverAppBar(
              //   pinned: true,
              //   // floating: true,
              //   // snap: true,
              //
              //   // expandedHeight: 20,
              //   // onStretchTrigger: () async {
              //   //   print('Refresh');
              //   // },
              //   flexibleSpace: FlexibleSpaceBar(
              //     stretchModes: [
              //       StretchMode.blurBackground,
              //       StretchMode.fadeTitle,
              //       StretchMode.zoomBackground
              //     ],
              //     title: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Text(
              //           'Insta',
              //           style: TextStyle(
              //               fontFamily: 'Sacramento',
              //               color: Colors.black,
              //               fontSize: 36,
              //               fontWeight: FontWeight.bold),
              //         ),
              //         Text(
              //           'News',
              //           style: TextStyle(
              //               fontFamily: 'Sacramento',
              //               color: Colors.yellowAccent,
              //               fontSize: 36,
              //               fontWeight: FontWeight.bold),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              SliverPadding(padding: EdgeInsets.all(16),sliver:SliverToBoxAdapter(
                child: my_category_card_list_view(),
              ),),
        
              SliverPadding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 16),
                sliver: SliverToBoxAdapter(
                  child: SizedBox(
                    height: 16,
                  ),
                ),
              ),
              my_news_list_view_builder(category: "general"),
            ],
          ),
        ),
      ),
    );
  }
}


