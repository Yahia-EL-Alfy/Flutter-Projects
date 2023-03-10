import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(
          Icons.menu,
        ), //menu
        title: Text('First app'),
        actions: [
          IconButton(onPressed: searchFun, icon: Icon(Icons.search)), //search
          Icon(Icons.notifications), //notify
        ],
      ),

      body: SingleChildScrollView(

        child: Column(
          children: [
            Image(
              image: NetworkImage(
                'https://img.freepik.com/premium-photo/big-hamburger-with-double-beef-french-fries_252907-8.jpg?w=2000'
              ),
            ),
            Container(
              width: 130.0,
              height: 550.0,
              color: Colors.teal,
              child: Text(
                'first',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 35.0,


                ),

              ),
            ),
            Container(
              width: 130.0,
              height: 700.0,
              color: Colors.teal,
              child: Text(
                'second',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 35.0,


                ),

              ),
            ),
          ],
        ),
      ),
    );

  }
}

void searchFun() {
  print('search clicked');
}
