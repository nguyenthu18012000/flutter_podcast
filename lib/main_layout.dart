import 'package:flutter/material.dart';
import 'package:podcasts/bottom_navbar.dart';

class MainLayout extends StatefulWidget {
  Widget children;
  MainLayout({super.key, required this.children});

  @override
  State<MainLayout> createState() => _MainLayoutState(child: children);
}

class _MainLayoutState extends State<MainLayout> {
  TextEditingController aController = TextEditingController();
  Widget? child;

  _MainLayoutState({this.child});

  @override
  void dispose() {
    aController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          toolbarHeight: 200,
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Color.fromARGB(255, 86, 172, 206),
            ),
            child: Column(
              children: [
                const Logo(),
                SearchInput(aController: aController)
                
              ],
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: child!,
        ),
        bottomNavigationBar: BottomNavbar(indexScreen: 0),
      );
  }
}

class SearchInput extends StatelessWidget {
  SearchInput({
    Key? key,
    required this.aController,
  }) : super(key: key);

  TextEditingController aController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
      height: 50,
      child: TextField(
        style: TextStyle(color: Colors.white),
        controller: aController,
        cursorColor: Colors.white,
        decoration: InputDecoration(
          hintText: 'Search...',
          hintStyle: const TextStyle(color: Colors.white),
          suffixIcon: Container(
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 255, 182, 25),
            ),
            child: Center(
              child: IconButton(
                icon: const Icon(Icons.search),
                color: const Color.fromARGB(255, 166, 166, 166),
                padding: const EdgeInsets.all(5),
                iconSize: 23,
                onPressed: () {print(aController.text);},
              ),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
          contentPadding: const EdgeInsets.only(top: 5, left: 20),
          fillColor: const Color.fromARGB(255, 63, 139, 171),
          filled: true,
          suffixIconConstraints: BoxConstraints(maxWidth: 50),
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 80, bottom: 10),
      child:  Image.asset(
        "assets/images/logo.png",
        height: 100,
      ),
    );
  }
}