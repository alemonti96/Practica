
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Sumador(),
     );
  }
}
class Sumador extends StatefulWidget{
  @override
  _SumadorState createState() => _SumadorState();
}
class _SumadorState extends State<Sumador>{
  final estiloTexto = new TextStyle(fontSize: 32);
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hola mundo'),
        centerTitle: true,
      ),
  body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de Clicks', style: estiloTexto,
            ),
            Text('$contador', style: estiloTexto,
            )
          ],
        )),
        floatingActionButton: Row(children: <Widget>[
          FloatingActionButton(child: Icon(Icons.add),onPressed: (){setState(() {
            contador++;
          });},),
          FloatingActionButton(child: Icon(Icons.remove),onPressed: (){setState(() {
            contador--;
          });},),
          FloatingActionButton(child: Icon(Icons.circle),onPressed: (){setState(() {
            contador=0;
          });},),  
        ],),
      );
  } 
  }