import 'package:flutter/material.dart';

void main() => runApp(const SzamlaloApp());

class SzamlaloApp extends StatefulWidget {
  const SzamlaloApp({super.key});

  @override
  _SzamlaloAppState createState() => _SzamlaloAppState();
}

class _SzamlaloAppState extends State<SzamlaloApp> {
  int _szamlalo = 0;

  void _novel() {
    setState(() {
      _szamlalo++;
    });
  }

  void _csokkent() {
    setState(() {
      _szamlalo--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Szamlalo App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Szamlalo App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Számláló értéke:',
              ),
              Text(
                '$_szamlalo',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: _novel,
              tooltip: 'Növel',
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              onPressed: _csokkent,
              tooltip: 'Csökkent',
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
