import 'package:flutter/material.dart';

import '../../../../constants/global_variables.dart';

class UserMain extends StatefulWidget {
  const UserMain({super.key});

  @override
  State<UserMain> createState() => _UserMainState();
}

class _UserMainState extends State<UserMain> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  List<Widget> pages = [
    const Center(
      child: Text('Home'),
    ),
    const Center(
      child: Text('Messages'),
    ),
    const Center(
      child: Text('Market'),
    ),
    const Center(
      child: Text('Orders'),
    ),
    const Center(
      child: Text('Settings'),
    ),
  ];

  void updatePage(int page) {
    if (mounted) {
      setState(() {
        _page = page;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/mint_logo_01.png',
                width: 120,
                height: 45,
                color: Colors.black,
              ),
              const Text(
                'mint',
                style: TextStyle(
                  color: GlobalVariables.darkGreen,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: GlobalVariables.extraDarkGreen,
        unselectedItemColor: GlobalVariables.darkGreen,
        backgroundColor: GlobalVariables.lightGreen,
        iconSize: 25,
        onTap: updatePage,
        items: [
          // HOME
          BottomNavigationBarItem(
            icon: SizedBox(
              width: bottomBarWidth,
              height: _page == 0 ? 45 : 25,
              child: const ImageIcon(
                AssetImage('assets/images/bottom_bar_icons/home.png'),
                // size: _page == 1 ? 40 : 28,
              ),
            ),
            label: '',
          ),
          // MESSAGES
          BottomNavigationBarItem(
            icon: SizedBox(
              width: bottomBarWidth,
              height: _page == 1 ? 45 : 25,
              child: const ImageIcon(
                AssetImage('assets/images/bottom_bar_icons/messages.png'),
                // size: _page == 1 ? 40 : 28,
              ),
            ),
            label: '',
          ),
          // MARKET
          BottomNavigationBarItem(
            icon: SizedBox(
              width: bottomBarWidth,
              height: _page == 2 ? 45 : 25,
              child: const ImageIcon(
                AssetImage('assets/images/bottom_bar_icons/market.png'),
                // size: _page == 1 ? 40 : 28,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
