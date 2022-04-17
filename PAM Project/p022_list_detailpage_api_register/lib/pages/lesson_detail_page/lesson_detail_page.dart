import 'package:flutter/material.dart';
import '../../services/services.dart';
import '../../models/models.dart';
import '../../widgets/widgets.dart';

class LessonDetailPage extends StatelessWidget {
  //const LessonDetailPage({required this.idNews, required this.username});
  LessonDetailPage({required this.idNews});

  //const LessonDetailPage({required this.username});

  final String idNews;
  //final TextEditingController username;
  final username = TextEditingController();
  final email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: FutureBuilder<ApiReturnValue<NewsModel>>(
        future: NewsServices.getDetailNews(idNews),
        builder: (context, snapshoot) {
          if (snapshoot.hasData) {
            final news = snapshoot.data!.data;
            return CustomScrollView(
              slivers: [
                //Header
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: size.height * .45,
                    width: size.width,
                    child: Stack(
                      children: [
                        SizedBox.expand(
                          child: Image.asset(
                            'assets/image/drive-steering-wheel.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox.expand(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: theme.primaryColor.withOpacity(.9),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          width: size.width,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: size.height * .05,
                                  width: size.height * .05,
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey[200],
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(3)),
                                    image: DecorationImage(
                                      image: NetworkImage(news.imageUrl),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const Padding(
                                    padding: const EdgeInsets.only(top: 5)),
                                SizedBox(
                                  width: 80,
                                  child: Divider(
                                    color: Colors.amber,
                                    thickness: 1.5,
                                  ),
                                ),
                                const Padding(
                                    padding: const EdgeInsets.only(top: 16)),
                                Text(
                                  news.title,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                                const Padding(
                                    padding: const EdgeInsets.only(top: 30)),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                          fontFamily: 'Roboto',
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 7),
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(4),
                                        ),
                                        border: Border.all(color: Colors.white),
                                      ),
                                      child: Text(
                                        '\$${news.price}',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Roboto',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //News
                SliverPadding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      news.content,
                      style: TextStyle(
                        height: 1.5,
                      ),
                    ),
                  ),
                ),

                //Teke Thist Lesson
                SliverPadding(
                  padding: const EdgeInsets.only(top: 10),
                  sliver: SliverToBoxAdapter(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: ElevatedButton(
                        onPressed: () async {
                          final result = await NewsServices.submit();
                          if (result is ApiReturnValue) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(result.data),
                              ),
                            );
                          }
                        },
                        child: Text('TAKE THIS LESSON'),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 50,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                //Username
                SliverPadding(
                  padding: const EdgeInsets.only(top: 10),
                  sliver: SliverToBoxAdapter(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: TextField(
                          controller: username,
                          showCursor: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            filled: true,
                            prefixIcon: Icon(
                              Icons.alternate_email,
                              color: Color(0xFF666666),
                            ),
                            fillColor: Color(0xFFF2F3F5),
                            //hintStyle: GoogleFonts.lato(color: Color(0xff666666)),
                            hintText: "Email",
                          )),
                    ),
                  ),
                ),

                //Email
                SliverPadding(
                  padding: const EdgeInsets.only(top: 10),
                  sliver: SliverToBoxAdapter(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: TextField(
                          controller: email,
                          showCursor: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            filled: true,
                            prefixIcon: Icon(
                              Icons.alternate_email,
                              color: Color(0xFF666666),
                            ),
                            fillColor: Color(0xFFF2F3F5),
                            //hintStyle: GoogleFonts.lato(color: Color(0xff666666)),
                            hintText: "Email",
                          )),
                    ),
                  ),
                ),

                //Register
                SliverPadding(
                  padding: const EdgeInsets.only(top: 10),
                  sliver: SliverToBoxAdapter(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: ElevatedButton(
                        onPressed: () async {
                          final result =
                              //await NewsServices.register("Dari Page Detail");
                              await NewsServices.register(
                                  username.text, email.text);
                          if (result is ApiReturnValue) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(result.data),
                              ),
                            );
                          }
                        },
                        child: Text('REGISTER'),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 50,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: LoadingView(),
            );
          }
        },
      ),
    );
  }
}

// class LessonDetailPage extends StatefulWidget {
//   const LessonDetailPage({Key? key}) : super(key: key);


//   @override
//   _LessonDetailPageState createState() => _LessonDetailPageState();
// }

// class _LessonDetailPageState extends State<LessonDetailPage> {
//   GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final theme = Theme.of(context);
//     return Scaffold(
//       key: _key,
     
//       backgroundColor: Colors.white,
      // body: CustomScrollView(
      //   slivers: [
      //     SliverToBoxAdapter(
      //       child: SizedBox(
      //         height: size.height * .4,
      //         width: size.width,
      //         child: Stack(
      //           children: [
      //             SizedBox.expand(
      //               child: Image.asset(
      //                 'assets/image/drive-steering-wheel.jpg',
      //                 fit: BoxFit.cover,
      //               ),
      //             ),
      //             SizedBox.expand(
      //               child: DecoratedBox(
      //                 decoration: BoxDecoration(
      //                   color: theme.primaryColor.withOpacity(.9),
      //                 ),
      //               ),
      //             ),
      //             Positioned(
      //               bottom: 0,
      //               width: size.width,
      //               child: Padding(
      //                 padding: const EdgeInsets.all(20),
      //                 child: Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   mainAxisAlignment: MainAxisAlignment.end,
      //                   children: [
      //                     Icon(
      //                       widget.lesson.icon,
      //                       color: Colors.white,
      //                       size: 30,
      //                     ),
      //                     const Padding(padding: const EdgeInsets.only(top: 5)),
      //                     SizedBox(
      //                       width: 80,
      //                       child: Divider(
      //                         color: Colors.amber,
      //                         thickness: 1.5,
      //                       ),
      //                     ),
      //                     const Padding(
      //                         padding: const EdgeInsets.only(top: 16)),
      //                     Text(
      //                       widget.lesson.title,
      //                       style: TextStyle(
      //                         color: Colors.white,
      //                         fontSize: 30,
      //                       ),
      //                     ),
      //                     const Padding(
      //                         padding: const EdgeInsets.only(top: 30)),
      //                     Row(
      //                       crossAxisAlignment: CrossAxisAlignment.center,
      //                       children: [
      //                         CustomProgressIndicator(
      //                           width: 35,
      //                           widthValue:
      //                               35 * widget.lesson.level.enumToDouble(),
      //                         ),
      //                         Padding(
      //                           padding: const EdgeInsets.only(left: 10),
      //                           child: Text(
      //                             widget.lesson.level.enumToString(),
      //                             style: TextStyle(
      //                               fontWeight: FontWeight.bold,
      //                               color: Colors.white,
      //                             ),
      //                           ),
      //                         ),
      //                         Spacer(),
      //                         Container(
      //                           padding: const EdgeInsets.symmetric(
      //                               horizontal: 10, vertical: 7),
      //                           decoration: BoxDecoration(
      //                             borderRadius: const BorderRadius.all(
      //                               Radius.circular(4),
      //                             ),
      //                             border: Border.all(color: Colors.white),
      //                           ),
      //                           child: Text(
      //                             '\$${widget.lesson.price}',
      //                             style: TextStyle(
      //                               color: Colors.white,
      //                               fontSize: 16,
      //                               fontWeight: FontWeight.w500,
      //                             ),
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //     SliverPadding(
      //       padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      //       sliver: SliverToBoxAdapter(
      //         child: Text(
      //           widget.lesson.description,
      //           style: TextStyle(
      //             height: 1.5,
      //           ),
      //         ),
      //       ),
      //     ),
      //     SliverPadding(
      //       padding: const EdgeInsets.only(top: 10),
      //       sliver: SliverToBoxAdapter(
      //         child: Align(
      //           alignment: Alignment.topCenter,
      //           child: ElevatedButton(
      //             onPressed: () {
      //               ScaffoldMessenger.of(context).showSnackBar(
      //                 const SnackBar(
      //                   content: Text('Success Taked Lesson'),
      //                 ),
      //               );
      //             },
      //             child: Text('TAKE THIS LESSON'),
      //             style: ButtonStyle(
      //               padding: MaterialStateProperty.all(
      //                 const EdgeInsets.symmetric(
      //                   vertical: 15,
      //                   horizontal: 50,
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
//       extendBodyBehindAppBar: true,
//     );
//   }
// }
