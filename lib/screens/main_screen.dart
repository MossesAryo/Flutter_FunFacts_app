import 'package:flutter/material.dart';
import 'package:funfacts/screens/settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<String> facts = [
    "Cows have best friends and can become stressed when they are separated.",
    "Honey never spoils. It can last for centuries without going bad.",
    "A group of owls is called a parliament.",
    "Bananas are berries, but strawberries aren't.",
    "The Eiffel Tower can be 15 cm taller during the summer due to thermal expansion.",
    "The average person laughs about 15 times a day.",
    "A single cloud can weigh as much as 1 million pounds.",
    "Your taste buds have a lifespan of about 10 to 14 days.",
    "The longest recorded hiccuping lasted for 68 years!",
    "Bees can recognize human faces.",
    "The world's largest desert is Antarctica.",
    "A day on Venus is longer than a year on Venus.",
    "Butterflies taste with their feet.",
    "The dot over the letter 'i' is called a tittle.",
    "A group of flamingos is called a 'flamboyance.'",
    "The shortest war in history was between Britain and Zanzibar, lasting only 38 minutes.",
    "The smell of freshly-cut grass is actually a plant distress call.",
    "Elephants are the only animals that can't jump.",
    "There are more possible iterations of a game of chess than there are atoms in the observable universe.",
    "The world's oldest toy is a stick, according to archaeological finds."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fun Facts"),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SettingsScreen();
              }));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.settings),
            ),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: facts.length,
          itemBuilder: (BuildContext context, int index) {
            return Text(facts[index]);
          }),
    );
  }
}
