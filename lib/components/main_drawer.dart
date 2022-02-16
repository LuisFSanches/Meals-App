import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.amber,
            alignment: Alignment.bottomRight,
            child: Text(
              'Vamos Cozinhar?',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor
              ),
              ),

          )
        ],
      ),
    );
  }
}