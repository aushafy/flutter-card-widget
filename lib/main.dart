import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          leading: Icon(Icons.home),
          title: Center(child: Text("Tugas 4 Flutter")),
          actions: <Widget>[
            Icon(Icons.search),
          ],
        ),
        body: Container(
          color: Colors.blue,
          child: Column(
            children: <Widget>[
              Image.network(
                  'https://images.pexels.com/photos/2919720/pexels-photo-2919720.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
              Padding(padding: EdgeInsets.all(10.0)),
              CardImage(),
              Padding(padding: EdgeInsets.all(10.0)),
              BottomText(),
            ],
          ),
        ));
  }
}

class CardImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Card(
            child: Column(
          children: <Widget>[
            Image.network(
              'https://images.pexels.com/photos/371633/pexels-photo-371633.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
              height: 170.0,
              width: 200.0,
            ),
            Text(
              "Gambar 1",
              style: TextStyle(fontSize: 30),
            )
          ],
        )),
        Card(
            child: Column(
          children: <Widget>[
            Image.network(
              'https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
              height: 170.0,
              width: 190.0,
            ),
            Text(
              "Gambar 2",
              style: TextStyle(fontSize: 30, color: Colors.red),
            )
          ],
        )),
      ],
    );
  }
}

class BottomText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("View Image Mountain",
        style: TextStyle(fontSize: 37.0, color: Colors.red));
  }
}
