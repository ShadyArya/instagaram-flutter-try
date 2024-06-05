import 'package:flutter/material.dart';
import 'package:instagram/pages/home_page.dart';
import 'package:instagram/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int iconBottomSelected=0;

  List<Widget> pages = [
    HomePage(),
    ProfilePage(),
  ];

  // final pages = <Widget>[
  //   HomePage(),
  //   ProfilePage(),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.ac_unit),
        title: Text('Instagram'),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.favorite_outline)),
          IconButton(onPressed: (){},
              icon: Icon(Icons.chat_outlined)),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int pageIndex){
          setState(() {
            iconBottomSelected = pageIndex;
          });
        },
        selectedIndex: iconBottomSelected,
        destinations: [
          NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon:  Icon(Icons.home),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.person_outline),
              selectedIcon:  Icon(Icons.person),
              label: 'Profile'),
        ],
      ),
      body: pages[iconBottomSelected],
    );
  }
}
