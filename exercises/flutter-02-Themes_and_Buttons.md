# Flutter ICE 2 - Buttons, Styles and ThemeData

We've explored some basic layout, now let's start with looking at buttons and the Flutter Themeing/Styling system.

Create a new __Flutter Application__ called `themes_and_buttons`. Once the project is created, remove all the starter code in the main.dart and replace with the following:

### main.dart
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IGME-340 Week 3B"),
      ),
      body: Container(),
    );
  }
}


```
This code will be the basis for the exercise.

---
## Exercise:

1. Alter the overall theme of the app to use a _dark_ color scheme. Give the theme a `primary` and `secondary` color.
1. Alter the AppBar for your app (Do this in the themeData).

1. Add to the theme a `textTheme`, and establish a custom `color`, `fontSize`, and `fontWeight` for the following properties:
   * `displayLarge`
   * `displayMedium`
   * `displaySmall`
   * `titleLarge`
   * `titleMedium`
   * `titleSmall`
  
  
2. Change the `Container` into a `Column`. Add in 6 text widgets, and assign each to one of the text properties in your theme.

3. Add 3 button instances, one for each type, `TextButton`, `ElevatedButton`, and `OutlinedButton`. Give each some identifying text. For now, make each onpressed event an empty function.

4. Style the `TextButton` and `OutlinedButton` button using inline styles and give them a `background`,  `foreground`, and some font settings.

5. In the ThemeData, create a style for all `ElevatedButtons`, then alter the `ElevatedButton` in your Column to use this theme.

6. Create an `ElevatedButton` with an icon. Create and use an inline style to customize it as you like, but also alter the `border` of this button.
   
7. Alter the default font of the theme to `Courier`.
     
8. Add an `onPressed` event for each one, you can use either an external function or an anonymous function. Output some text to the console.
   
Perform a `flutter clean`, zip up your app and submit to the Assignment dropbox.