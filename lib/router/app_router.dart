import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../modules/create_session/bloc/create_session_bloc.dart';
import '../modules/create_session/create_session_page.dart';
import '../modules/create_session/enter_session_page.dart';

part 'route_names.dart';

class AppRouter {
  final GoRouter router;
  AppRouter()
      : router = GoRouter(
          initialLocation: RouteNames.enterSession.path,
          routes: [
            GoRoute(
              path: RouteNames.enterSession.path,
              name: RouteNames.enterSession.name,
              builder: (context, state) {
                return const EnterSessionPage();
              },
            ),
            GoRoute(
              path: RouteNames.createSession.path,
              name: RouteNames.createSession.name,
              builder: (context, state) {
                return BlocProvider(
                  create: (context) => CreateSessionBloc(),
                  child: const CreateSessionPage(),
                );
              },
            ),
          ],
        );
}
