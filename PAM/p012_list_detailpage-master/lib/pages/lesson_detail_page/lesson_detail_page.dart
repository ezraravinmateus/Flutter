import 'package:flutter/material.dart';
import '../../models/models.dart';
import '../../widgets/widgets.dart';

class LessonDetailPage extends StatefulWidget {
  const LessonDetailPage({Key? key, required this.lesson}) : super(key: key);
  final LessonModel lesson;

  @override
  _LessonDetailPageState createState() => _LessonDetailPageState();
}

class _LessonDetailPageState extends State<LessonDetailPage> {
  GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: size.height * .4,
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
                          Icon(
                            widget.lesson.icon,
                            color: Colors.white,
                            size: 30,
                          ),
                          const Padding(padding: const EdgeInsets.only(top: 5)),
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
                            widget.lesson.title,
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
                                widthValue:
                                    35 * widget.lesson.level.enumToDouble(),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  widget.lesson.level.enumToString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
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
                                  '\$${widget.lesson.price}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
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
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            sliver: SliverToBoxAdapter(
              child: Text(
                widget.lesson.description,
                style: TextStyle(
                  height: 1.5,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 10),
            sliver: SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.topCenter,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Success Taked Lesson'),
                      ),
                    );
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
        ],
      ),
      extendBodyBehindAppBar: true,
    );
  }
}
