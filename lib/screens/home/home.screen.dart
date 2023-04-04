import 'package:flutter/material.dart';
import "package:go_router/go_router.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MRZ lab'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => GoRouter.of(context).pushNamed('mrz_scanner'),
              child: const Text('flutter_mrz_scanner'),
            ),
            ElevatedButton(
              onPressed: () => GoRouter.of(context).pushNamed('camera'),
              child: const Text('manual-camera'),
            ),
          ],
        ),
      ),
    );
  }
}
