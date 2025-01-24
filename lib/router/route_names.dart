part of 'app_router.dart';

enum RouteNames {
  enterSession(name: 'enterSession', path: '/enter-session'),
  createSession(name: 'createSession', path: '/create-session');

  final String name;
  final String path;
  const RouteNames({required this.name, required this.path});
}
