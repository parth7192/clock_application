import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int score = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Game Page"),
        actions: [
          Text("Score: $score"),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              alignment: Alignment.center,
              child: Transform.scale(
                scale: 5,
                child: const CircularProgressIndicator(
                  color: Colors.red,
                ),
              ),
            ),
          ),
          const Divider(),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FloatingActionButton(
                        onPressed: () {},
                        child: const Icon(Icons.arrow_circle_up),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FloatingActionButton(
                            onPressed: () {},
                            child: const Icon(Icons.arrow_circle_left_outlined),
                          ),
                          FloatingActionButton(
                            onPressed: () {},
                            child:
                                const Icon(Icons.arrow_circle_right_outlined),
                          ),
                        ],
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        child: const Icon(Icons.arrow_circle_down),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("STOP"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("RESET"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
