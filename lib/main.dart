import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
  //A model of the button to save some lines of code
  Widget button(
      {required VoidCallback onPressed,
      double? buttonWidth,
      String? buttonText}) {
    return Container(
      width: buttonWidth,
      padding: const EdgeInsets.all(5.0),
      height: 80,
      child: RaisedButton(
        color: Colors.purpleAccent[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        onPressed: onPressed,
        child: Text(buttonText!),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width *
        0.5; //getting half of the current width for each button

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 160,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    //two rows, each one with 2 buttons

                    Row(
                      children: [
                        button(
                          onPressed: () {},
                          buttonWidth: buttonWidth,
                          buttonText: 'button1',
                        ),
                        button(
                          onPressed: () {},
                          buttonWidth: buttonWidth,
                          buttonText: 'button2',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        button(
                          onPressed: () {},
                          buttonWidth: buttonWidth,
                          buttonText: 'button3',
                        ),
                        button(
                          onPressed: () {},
                          buttonWidth: buttonWidth,
                          buttonText: 'button4',
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  //a container to give a white space around the inner widget
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Align(
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: RaisedButton(
                        color: Colors.red, //the main button
                        shape: CircleBorder(),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
