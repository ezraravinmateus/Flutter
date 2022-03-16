import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'lesson_page/lesson_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentIndex = 0;
  PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          children: [
            LessonPage(),
            Scaffold(
              body: Center(
                child: Text(
                  'Calendar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Scaffold(
              body: Center(
                child: Text(
                  'Balance',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Scaffold(
              body: Center(
                child: Text(
                  'Account',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          backgroundColor: theme.primaryColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.white70,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            if (_currentIndex != index) {
              _pageController.jumpToPage(index);
              setState(() => _currentIndex = index);
            }
          },
          items: items,
        ),
      ),
    );
  }

  //// Bottom Navigationbar Items
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.book_rounded),
      activeIcon: Stack(
        alignment: Alignment.center,
        children: [
          Icon(
            Icons.book_rounded,
            color: Colors.amber,
          ),
          Transform.translate(
            offset: Offset(0, 25),
            child: Container(
              width: 50,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
            ),
          ),
        ],
      ),
      label: 'Lessons',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.insert_invitation_rounded),
      activeIcon: Stack(
        alignment: Alignment.center,
        children: [
          Icon(
            Icons.insert_invitation_rounded,
            color: Colors.amber,
          ),
          Transform.translate(
            offset: Offset(0, 25),
            child: Container(
              width: 50,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
            ),
          ),
        ],
      ),
      label: 'Schedule',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_balance),
      activeIcon: Stack(
        alignment: Alignment.center,
        children: [
          Icon(
            Icons.account_balance,
            color: Colors.amber,
          ),
          Transform.translate(
            offset: Offset(0, 25),
            child: Container(
              width: 50,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
            ),
          ),
        ],
      ),
      label: 'Payment',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outline_outlined),
      activeIcon: Stack(
        alignment: Alignment.center,
        children: [
          Icon(
            Icons.person,
            color: Colors.amber,
          ),
          Transform.translate(
            offset: Offset(0, 25),
            child: Container(
              width: 50,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
            ),
          ),
        ],
      ),
      label: 'Schedule',
    ),
  ];
}
