import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';
import '../../services/services.dart';
import '../../models/models.dart';
import '../lesson_detail_page/lesson_detail_page.dart';

class LessonPage extends StatelessWidget {
  const LessonPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text('THIS IS DA LESSON!'),
          centerTitle: true,
          floating: true,
          brightness: Brightness.dark,
          actions: [
            IconButton(
              onPressed: () => print('Tapped'),
              icon: Icon(Icons.dehaze),
            ),
          ],
        ),
        FutureBuilder<ApiReturnValue<List<NewsModel>>>(
            future: NewsServices.getNews(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListNewsViewLessonPage(
                  size: size,
                  data: snapshot.data!.data,
                );
              } else {
                return SliverPadding(
                  padding: const EdgeInsets.all(20),
                  sliver: SliverToBoxAdapter(
                    child: LoadingView(),
                  ),
                );
              }
            }),
      ],
    );
  }
}

class ListNewsViewLessonPage extends StatelessWidget {
  const ListNewsViewLessonPage({
    Key? key,
    required this.size,
    required this.data,
  }) : super(key: key);

  final Size size;
  final List<NewsModel> data;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            NewsModel news = data[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              LessonDetailPage(idNews: news.id)));
                },
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                child: Material(
                  color: Colors.blue,
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  child: SizedBox(
                    height: 120,
                    width: size.width - 40,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Container(
                            width: 88,
                            height: 88,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[200],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              image: DecorationImage(
                                image: NetworkImage(news.imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          VerticalDivider(
                            color: Colors.white24,
                            width: 20,
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  news.title,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Row(
                                  children: [
                                    CustomProgressIndicator(
                                      width: 35,
                                      widthValue: 35 * news.indicator,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        news.indicatorTitle,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Roboto',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
          childCount: data.length,
        ),
      ),
    );
  }
}
