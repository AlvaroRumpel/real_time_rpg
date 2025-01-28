part of 'app_router.dart';

enum RouteNames {
  enterSession(name: 'enterSession', path: '/enter-session'),
  createSession(name: 'createSession', path: '/create-session'),
  inSession(name: 'inSession', path: '/in-session'),
  selectChar(name: 'selectChar', path: '/select-char'),
  createChar(name: 'createChar', path: '/create-char');

  final String name;
  final String path;
  const RouteNames({required this.name, required this.path});
}
