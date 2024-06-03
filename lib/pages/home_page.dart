import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Counter: $count',
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                final newCount =
                    await context.push('/second-page', extra: count);

                setState(() {
                  count = newCount as int;
                });
              },
              child: const Text('Open Counter'),
            ),
          ],
        ),
      ),
    );
  }
}
