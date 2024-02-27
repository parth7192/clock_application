import 'package:clock_application/views/components/button_row.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                foregroundImage: NetworkImage(
                    "https://cdn.vectorstock.com/i/preview-1x/13/04/male-profile-picture-vector-2041304.jpg"),
              ),
              accountName: Text("Clock's"),
              accountEmail: Text("clock123@gmail.com"),
            ),
            buttonRow(
              btnName: "Name",
              button: ElevatedButton(
                onPressed: () {},
                child: const Text("Name Button"),
              ),
            ),
            buttonRow(
              btnName: "Details",
              button: ElevatedButton(
                onPressed: () {},
                child: const Text("DETAIL"),
              ),
            ),
            buttonRow(
              btnName: "Age",
              button: ElevatedButton(
                onPressed: () {},
                child: const Text("Your Age"),
              ),
            ),
            buttonRow(
              btnName: "Nation",
              button: ElevatedButton(
                onPressed: () {},
                child: const Text("INDIA"),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            buttonRow(
              btnName: "Game page",
              button: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('game_page');
                },
                child: const Text("Game Page"),
              ),
            ),
            buttonRow(
              btnName: "Clock page",
              button: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('clock_page');
                },
                child: const Text("Clock Page"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
