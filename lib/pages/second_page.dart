import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondPage extends StatefulWidget {
  final int startCount;

  const SecondPage({
    super.key,
    required this.startCount,
  });

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late int count;

  @override
  void initState() {
    count = widget.startCount;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Page'),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.pop(count),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Count: $count',
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        count--;
                      });
                    },
                    icon: const Icon(Icons.minimize_outlined),
                  ),
                  const SizedBox(width: 16),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
