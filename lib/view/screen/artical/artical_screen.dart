import 'package:flutter/material.dart';
import 'package:social_event/view/component/bottom_nav_bar/common_bottom_bar.dart';
import 'package:social_event/view/screen/artical/widgets/search_article.dart';

import 'widgets/post_article.dart';
import 'widgets/post_item.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          searchArticle(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  postArticle(),
                  ListView.builder(
                    itemCount: 5,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return const PostItem();
                    },
                  )
                ],
              ),
            ),
          )
        ],
      )),
      bottomNavigationBar: const CommonBottomNavBar(currentIndex: 3),
    );
  }
}
