import 'package:flutter/material.dart';
import 'package:muscii/constants/styles.dart';
import 'package:muscii/game/game_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: accentColor[200],
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const GamePage())
                ),
                style: bigButtonStyle,
                child: const Text('Start Game!',
                  style: TextStyle(
                    fontSize: 24.0
                  ),
                ),
              ),
              TextButton(
                  onPressed: () => print('uh oh this doesnt do anything'),
                  child: const Text('Settings',
                    style: TextStyle(
                      fontSize: 24
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}