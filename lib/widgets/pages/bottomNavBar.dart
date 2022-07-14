import 'package:flutter/material.dart';
import 'package:k_learn_app/widgets/pages/translate.dart';
import 'package:k_learn_app/widgets/pages/word_list.dart';
import 'package:routemaster/routemaster.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static final List<Widget> _pageList = [
    const TranslatePage(),
    const WordListPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.translate), label: 'transl'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'wordList'),
        ]
      )
    );
  }
}
