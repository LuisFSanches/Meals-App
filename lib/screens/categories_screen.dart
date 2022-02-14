import 'package:flutter/material.dart';

import '../components/category_item.dart';

import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Vamos Cozinhar?')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 2.5/1.5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20
          ),
          children: DUMMY_CATEGORIES.map((cat){
            return CategoryItem(cat);
          }).toList(),
    
        ),
      ),
    );
  }
}