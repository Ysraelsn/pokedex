import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _myPage = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 75,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                iconSize: 50.0,
                icon: Icon(CupertinoIcons.home),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(0);
                  });
                },
              ),
              IconButton(
                iconSize: 50.0,
                icon: Icon(CupertinoIcons.search),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(1);
                  });
                },
              ),
              IconButton(
                iconSize: 50.0,
                icon: Icon(CupertinoIcons.list_bullet),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(3);
                  });
                },
              )
            ],
          ),
        ),
      ),
      body: PageView(
        controller: _myPage,
        onPageChanged: (int) {},
        children: <Widget>[
          Center(
            child: Container(
              child: Text('Pokedex'),
            ),
          ),
          Center(
            child: Container(
              child: Text('Empty Body 1'),
            ),
          ),
          Center(
            child: Container(
              child: Text('Empty Body 2'),
            ),
          ),
          Center(
            child: Container(
              child: Text('Empty Body 3'),
            ),
          )
        ],
        physics:
            NeverScrollableScrollPhysics(), // Comment this if you need to use Swipe.
      ),
    );
  }
}
