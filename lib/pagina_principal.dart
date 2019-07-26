import 'package:flutter/material.dart';
import 'Beneficios.dart';


void main() {
  runApp(MaterialApp(
    title: 'Telnor',
    home: HomeScreen(),
  ));
}



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Telnor')
        , backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                      Colors.teal,
                      Colors.tealAccent
                    ])
                ),
                child: Text('Telnor')),
            CostumListTile(),
            ListTile(
              title: Text('1'),
              onTap: () {},
            ),

            ListTile(
              title: Text('2'),
              onTap: () {},
            ),
            ListTile(
              title: Text('3'),
              onTap: () {},
            ),
            ListTile(
              title: Text('4'),
              onTap: () {},
            ),
            ListTile(
              title: Text('5'),
              onTap: () {},
            ),
            ListTile(
              title: Text('6'),
              onTap: () {},
            ),
            ListTile(
              title: Text('7'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );

  }
}


class CustomListTile extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return InkWell(
      child: Row(
        children: <Widget>[
          Icon(Icons.person),
          Text('Beneficios'),
          Icon(Icons.arrow_right)
        ],
      ),
    );
  }
}