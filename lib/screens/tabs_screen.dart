import 'package:flutter/material.dart';
import 'package:meals/components/main_drawer.dart';
  
import 'categories_screen.dart';
import 'favorite_screen.dart';

class TabsScreen extends StatefulWidget {


  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  int _selectedScreenIndex = 0;

  final List<String> titles=[
    'Lista de Categorias',
    'Meus Favoritods'
  ];

  final List<Widget> _screens=[
    CategoriesScreen(),
    FavoriteScreen(),
  ];

  _selectScreen(int index){
    setState(() {
      _selectedScreenIndex = index;
    });
  }


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(titles[_selectedScreenIndex]
          )
        ),
      ),

      drawer:MainDrawer(),

      body:_screens[_selectedScreenIndex],

      bottomNavigationBar:BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.amber,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.category),
            label: 'Categorias'
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favoritos'
          ),
        ],
      )
       ,
    );
  }
}