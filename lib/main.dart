import 'package:flutter/material.dart';
import 'package:my/email.dart';
import 'package:my/side_drawers/reading.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Jordan Jones';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          color: Colors.black,
        ),
      ),
      home: const MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 41, 39, 39),
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //figure out how to get this to bottom of screen
          //every time i try to put a functionaility below the image i get the red lines
          //why is this
          //add paddding to the words
          ElevatedButton(
            child: const Text('Send me a message'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EmailPage()),
              );
            },
          ),
          //make text larger and add some padding and styling to the font
          const Text(
            'Check out stuff about me on the left!',
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            alignment: Alignment.center,
            child: Image.asset('assets/images/jonesjordandunk1.jpeg',
                fit: BoxFit.fill),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text('About Me'),
            ),
            ListTile(
              title: const Text('Basketball'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Art'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Reading'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const myReading()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
