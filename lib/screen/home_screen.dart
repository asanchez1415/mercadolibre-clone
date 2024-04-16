import 'package:flutter/material.dart';
import 'package:mercadolibre_clone/constants/colors.dart';
import 'package:mercadolibre_clone/screen/screen.dart';
// Import widgets
import '../widgets/home/home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTab = 0;

  final List _pages = [
    // Homepage
    const SingleChildScrollView(
      child: Column(
        children: [
          SearchBarWidget(),
          LocationRowWidget(),
          BannerWidget(),
          CategoriesWidget(),
          SecondaryBannerWidget(),
          RecommendedWidget(),
        ],
      ),
    ),
    const FavoritesScreen(),
    const Center(
      child: Text("Mis compras"),
    ),
    const Center(
      child: Text("Notificaciones"),
    ),
    const Center(
      child: Text("Más"),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          backgroundColor: mlbYellow,
        ),
      ),
      backgroundColor: mlbBackground,
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: mlbSelectedBlue,
        unselectedItemColor: mlbUnSelectedGrey,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        showUnselectedLabels: true,
        iconSize: 25,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Inicio"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_sharp), label: "Favoritos"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: "Mis compras"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined),
              label: "Notificaciones"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Más"),
        ],
      ),
    );
  }
}
