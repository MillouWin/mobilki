import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Общежитие КубГАУ в другой вселенной'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool like = false;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'assets/5.jpg',
            fit: BoxFit.cover,
            height: 220,
            width: 420,
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    "Общежитие № 20",
                    textAlign: TextAlign.start,
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Другая вселенная',
                    textAlign: TextAlign.start,
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (like) {
                        _counter--;
                      } else {
                        _counter++;
                      }
                      like = !like;
                    });
                  },
                  icon: Icon(like ? Icons.favorite : Icons.favorite_border,
                      color: Colors.red),
                ),
                Text(
                  '$_counter',
                  style: TextStyle(color: Colors.black),
                ),
              ])
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                  onPressed: () {
                    setState(() {});
                  },
                  icon: Icon(Icons.call, color: Colors.green, size: 26)),
              IconButton(
                  onPressed: () {
                    setState(() {});
                  },
                  icon: Icon(Icons.near_me, color: Colors.green, size: 26)),
              IconButton(
                  onPressed: () {
                    setState(() {});
                  },
                  icon: Icon(Icons.share, color: Colors.green, size: 26)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              Text('ПОЗВОНИТЬ',
                  style: TextStyle(fontSize: 10, color: Colors.green)),
              Text('МАРШРУТ',
                  style: TextStyle(fontSize: 10, color: Colors.green)),
              Text('ПОДЕЛИТЬСЯ',
                  style: TextStyle(fontSize: 10, color: Colors.green)),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
            child: Text(
              "«Представим на пару мгновений, что данное здание - действующие общежитие №20 в городе Краснодар на улице Калинина 13. Общежитие оснащено прекрасными кухнями, в которых есть отличные быстроразогреваемые и настраиваемые температурно печи, самоочищающаяся микроволновка, кулер с водой и чайник с постоянно действующим кипятком, прекрасно обустроенные блоки с небольшими, но проветриваемыми санузлами, просторными комнатами, оснащенными полочками, большими шкафчиками, удобными кроватями с хорошим матрасом на улице есть много растительности и свой сад, а также  на первом этаже есть комната для геймеров и пространство для работы за ноутбуками, если своя комната надоела или соседи, а поработать с постоянной подзарядкой ноутбука очень хочется, также на первом этаже есть своя столовая и мини-буфет, любой не умеющий готовить больше не будеть страдать и заваривать постонно доширак и прочую не самую полезную еду. Представили? А теперь вернемся к реальности и примем её с распростертыми руками:)»",
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
