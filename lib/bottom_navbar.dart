import 'package:flutter/material.dart';

class Item {
  String label;
  Widget icon;

  Item({required this.label, required this.icon});
}

class BottomNavbar extends StatefulWidget {
  int indexScreen;

  BottomNavbar({
    super.key,
    required this.indexScreen,
  });
  

  @override
  State<BottomNavbar> createState() => _BottomNavbarState(indexScreen: indexScreen);
}

class _BottomNavbarState extends State<BottomNavbar> {

  int indexScreen;
  _BottomNavbarState({required this.indexScreen});

  List<Item> navbarItems = [
    Item(label: 'Home', icon: const Icon(Icons.home)),
    Item(label: 'Favorite', icon: const Icon(Icons.favorite_border_outlined)),
    Item(label: 'About', icon: const Icon(Icons.info_outline)),
  ];

  void navigateScreen(index) {
    setState(() {
      indexScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color.fromARGB(255, 81, 185, 224),
      items: navbarItems.map((item) {
          return BottomNavigationBarItem(
            icon: item.icon,
            label: item.label,
            activeIcon: NavbarItem(label: item.label,child: item.icon,),
          );
        }).toList(),
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: indexScreen,
      onTap: navigateScreen,
    );
  }
}

class NavbarItem extends StatelessWidget {
  Widget child;
  String label;
  NavbarItem({super.key, required this.child, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 134, 206, 233),
        borderRadius: BorderRadius.circular(10),
      ),
      width: 120,
      height: 30,
      child: Row(
        children: [
          Expanded(
            child: child
          ),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    )
    ;
    
  }
}
