import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Салават',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Суйуктуу Пайгамбарга с.а.в Салават'),
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrimentCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Stack(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/img.jpg'), fit: BoxFit.cover),
            ),
          ),
          Column(
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Text(
                    'Аллахумма салли аля сайидина Мухаммадин ва аля аали саидина Мухаммад: ',
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 65, left: 180),
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.moon,
                      size: 60,
                      color: Colors.white,
                    ),
                    Text('$_counter',
                        style: TextStyle(fontSize: 60, color: Colors.white)),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 60, top: 400, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(
                Icons.add,
                size: 40,
              ),
            ),
            FloatingActionButton(
              onPressed: _decrimentCounter,
              tooltip: 'Increment',
              child: const Icon(
                FontAwesomeIcons.minus,
                size: 40,
              ),
            ),
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
