import 'package:flutter/material.dart';

class BothDirectionScrollView extends StatelessWidget {
  const BothDirectionScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Both Direction Scroll View',
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal[100],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              for (int i = 0; i < 20; i++)
                Row(
                  children: [
                    for (int j = 0; j < 20; j++)
                      Container(
                        margin: const EdgeInsets.all(4.0),
                        padding: const EdgeInsets.all(24.0),
                        color: Colors.teal[(i * 100) % 900 + 100],
                        child: Text('Cell ${i+1}-${j+1}'),
                      ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
