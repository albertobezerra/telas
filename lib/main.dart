import 'package:flutter/material.dart';
import 'package:telas/tela2.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/secundaria': (context) => SegundaTela(),
    },
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira tela'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            RaisedButton(
              child: Text('Ir para a segunda tela'),
              padding: EdgeInsets.all(15),
              onPressed: () {
                Navigator.pushNamed(context, '/secundaria');
              },
            )
          ],
        ),
      ),
    );
  }
}
