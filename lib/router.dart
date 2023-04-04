import "package:go_router/go_router.dart";

import "package:mrz_scan/screens/home/home.screen.dart";
import 'package:mrz_scan/screens/manual-camera/camera.dart';
import "package:mrz_scan/screens/mrz_scanner/camera.screen.dart";

class MyRouter {
  final _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/camera',
        name: 'camera',
        builder: (context, state) => const CameraScreen(),
      ),
      GoRoute(
        path: '/mrz_scanner',
        name: 'mrz_scanner',
        builder: (context, state) => const MrzCameraScreen(),
      )
    ],
  );

  getRoutes() => _router;
}
