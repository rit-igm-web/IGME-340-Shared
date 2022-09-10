import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button & Dialog Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Button & Dialog Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

///
/// This is a primary example of how to create buttons and a simple alertbox.
/// NOTE, This is mainly the starter template with all the comments stripped away.
///
/// Buttons, note that if the onPressed is null, Flutter automatically greys out the button,
///   so any styles associated with the button WILL NOT SHOW!
///   You can avoid this by either defining a function or using an anonymous stub (){}
///

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: showAlertDialog,
              child: Text("Text Button 01"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Elevated Button 01"),
            ),
            OutlinedButton(
              onPressed: null,
              child: Text("Outlined Button 01"),
            ),
          ],
        ),
      ),
    );
  }

  ///
  /// This is an example of a function that invokes the
  /// `showDialog` flutter function.
  /// Pay attention to where this method is declared; we are still inside our class, so
  /// we have access to the `context`, which is what flutter uses to determine where to
  /// position things (think document object in HTML).
  ///
  /// The showDialog has a `barrierDismissible` proprety, which determines if our dialog goes away
  /// if the user clicks or pressed the screen outside of our dialog.
  /// The showDialog returns an AlertDialog Widget.
  ///   Notice how the AlertDialog has a list of actions, which are addtional widgets.
  ///   this example we use TextButtons, but they could also be Elevated or Outlined buttons.
  ///   It's important to note the onPressed function, we are popping our dialog off the Navigator stack.
  ///   The Navigator stack is a list of complete UI widgets, so the first one is our main UI, the AlertDialog,
  ///   when shown is a new item on top of our main UI, so to close it, we POP it off our stack.
  ///   Notce again, how a null for onPressed automatically deactivates our button.
  ///
  void showAlertDialog() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Text Button Dialog"),
          content: const Text("You pressed the Text Button!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("OK"),
            ),
            TextButton(
              onPressed: null,
              child: Text("Cancel"),
            ),
          ],
        );
      },
    );
  }
}
