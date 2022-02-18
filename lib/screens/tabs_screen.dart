import 'package:flutter/material.dart';
import 'package:meals/components/main_drawer.dart';
  
import 'categories_screen.dart';
import 'favorite_screen.dart';

import '../models/meal.dart';

class TabsScreen extends StatefulWidget {

  final List<Meal> favoriteMeals;

  const TabsScreen(this.favoriteMeals);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  int _selectedScreenIndex = 0;

  final List<String> titles=[
    'Lista de Categorias',
    'Meus Favoritods'
  ];

   List<Widget> _screens=[];

  @override
  void initState(){
    super.initState();

    _screens=[
    CategoriesScreen(),
    FavoriteScreen(widget.favoriteMeals),
  ];
  }
  

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