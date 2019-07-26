import 'package:flutter/material.dart';

class CostumListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Vacac(),
      ),
    );
  }
}

class Vacac extends StatefulWidget {
  @override
  _VacacState createState() => _VacacState();
}

class _VacacState extends State<Vacac> {
  // ignore: non_constant_identifier_names
  final list_item = [
    {
      "name" : "one",
      "pic" : "assets/images/vacaciones.jpg",
    },
    {
      "name" : "two",
      "pic" : "assets/images/agenda.jpg",
    },
    {
      "name" : "three",
      "pic" : "assets/images/prestamos.jpg",
    },
    {
      "name" : "four",
      "pic" : "assets/images/carta.jpg",
    },
    {
      "name" : "five",
      "pic" : "assets/images/lentes.jpg",
    },
    {
      "name" : "six",
      "pic" : "assets/images/contacto.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: list_item.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)
        ,itemBuilder: (BuildContext context, int index){
      return Vacacs(
        Vacacs_name: list_item[index]['name'],
        Vacacs_pic: list_item[index]['pic'],
      );
    });
  }
}

class Vacacs extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final Vacacs_name;
  // ignore: non_constant_identifier_names
  final Vacacs_pic;

  // ignore: non_constant_identifier_names
  Vacacs(
      // ignore: non_constant_identifier_names
          {this.Vacacs_name,
        // ignore: non_constant_identifier_names
        this.Vacacs_pic});
  Widget build(BuildContext context) {
    return Card(
        child: Hero(tag: Vacacs_name,
            child: Material(
              child: InkWell(
                onTap: (){},
                child: GridTile(
                    child: Image.asset(Vacacs_pic)
                ),
              ),
            )
        )
    );
  }
}