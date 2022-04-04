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

  makeProfileAvatar() {
    return Column(
      children: <Widget>[
        // SizedBox(height: 10.0),
        CircleAvatar(
          radius: 60.0,
          backgroundImage: new AssetImage('../assets/image/shubie2.png'),
        ),
        SizedBox(height: 20.0),
        Center(
          child: new Text("Shuaib Afegbua",
              style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ),
        Center(
          child: new Text("Abuja, Nigeria",
              style: new TextStyle(
                  fontSize: 18.0,
                  color: Colors.white70,
                  fontWeight: FontWeight.normal)),
        )
      ],
    );
  }

  Column makeMenuItem(icon, title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      verticalDirection: VerticalDirection.down,
      children: <Widget>[
        Center(
            child: Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        )),
        SizedBox(height: 10.0),
        new Center(
          child: new Text(title,
              style: new TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        )
      ],
    );
  }

  GridView menuGrid() {
    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        makeMenuItem(Icons.message, "Messages"),
        makeMenuItem(Icons.phone_forwarded, "Calls"),
        makeMenuItem(Icons.dialpad, "Dial"),
        makeMenuItem(Icons.contacts, "Contacts"),
        makeMenuItem(Icons.more_horiz, "More"),
        makeMenuItem(Icons.settings, "Settings")
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        drawer: Drawer(
          child: Container(
            padding: EdgeInsets.only(top: 60.0),
            decoration: BoxDecoration(color: Color.fromRGBO(55, 113, 170, 1.0)),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: makeProfileAvatar(),
                  flex: 1,
                ),
                Expanded(
                  child: menuGrid(),
                  flex: 3,
                )
              ],
            ),
          ),
        ),
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
