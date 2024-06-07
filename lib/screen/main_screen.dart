import 'package:flutter/material.dart';
import 'package:photo_surfing/screen/view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedTab = 2;

  void ChangeTab(int index) {
    if(_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  static const List<Widget> _pageList = [
    PhotoFeedScreen(),
    AddPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_selectedTab],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedTab,
        backgroundColor: Theme.of(context).colorScheme.background,
        indicatorColor: Theme.of(context).colorScheme.onPrimary,
        onDestinationSelected: ChangeTab,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.art_track_outlined, color: Theme.of(context).colorScheme.tertiary, size: 24,),
            selectedIcon: Icon(Icons.art_track, color: Theme.of(context).colorScheme.background, size: 24,),
            label: 'Photo feed'
          ),
          NavigationDestination(
            icon: Icon(Icons.add_box_outlined, color: Theme.of(context).colorScheme.tertiary, size: 24,),
            selectedIcon: Icon(Icons.add_box, color: Theme.of(context).colorScheme.background, size: 24,),
            label: 'Upload'
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle_outlined, color: Theme.of(context).colorScheme.tertiary, size: 24,),
            selectedIcon: Icon(Icons.account_circle, color: Theme.of(context).colorScheme.background, size: 24,),
            label: 'Account'
          ),
        ],
      ),
    );
  }
}