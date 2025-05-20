// Este archivo forma parte de un software cubierto por la GNU Affero General Public License v3.0
// Copyright (C) 2025 Startec Systems
// Autor: Isaac Montes <startec.systems.inc@gmail.com>
// https://startec-systems.com
//
// Este programa es software libre: puedes redistribuirlo y/o modificarlo
// bajo los términos de la Licencia Pública General Affero de GNU publicada
// por la Free Software Foundation, ya sea la versión 3 de la Licencia, o
// (a tu elección) cualquier versión posterior.
//
// Este programa se distribuye con la esperanza de que sea útil,
// pero SIN GARANTÍA ALGUNA; ni siquiera la garantía implícita
// de COMERCIALIZACIÓN o ADECUACIÓN PARA UN PROPÓSITO PARTICULAR.
//
// Consulta el archivo LICENSE para más detalles.

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BiteRest',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        fontFamily: 'HotelOriental',
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'BiteRest systems'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter(){
    setState((){
      if (_counter <= 0){
        return;
      }
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title,),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Presiona el boton para incrementar el valor:',
              style: TextStyle(
                fontFamily: 'BiteRest',
                fontSize: 12,
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton:  Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrementar',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 16), // espacio entre botones
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Incrementar',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
