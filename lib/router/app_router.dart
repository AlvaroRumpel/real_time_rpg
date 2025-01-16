import 'package:go_router/go_router.dart';

import '../modules/create_session/create_session_page.dart';

part 'route_names.dart';

class AppRouter {
  final GoRouter router;
  AppRouter()
      : router = GoRouter(
          initialLocation: '/',
          routes: [
            GoRoute(
              path: '/',
              name: '/',
              builder: (context, state) {
                return const CreateSessionPage();
              },
            ),
          ],
        );
}
