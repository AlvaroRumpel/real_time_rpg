import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../models/rpg_table_model.dart';
import '../modules/create_session/bloc/enter_session_bloc.dart';
import '../modules/select_char/bloc/create_char_bloc.dart';
import '../modules/select_char/create_char_page.dart';
import '../modules/select_char/select_char_page.dart';
import '../modules/create_session/bloc/create_session_bloc.dart';
import '../modules/create_session/create_session_page.dart';
import '../modules/create_session/enter_session_page.dart';
import '../modules/in_session/in_session_page.dart';

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
                return BlocProvider(
                  create: (context) => EnterSessionBloc(),
                  child: const EnterSessionPage(),
                );
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
            GoRoute(
              path: '${RouteNames.inSession.path}/:id',
              name: RouteNames.inSession.name,
              builder: (context, state) {
                final table = state.extra;
                return InSessionPage(
                  table: table as RpgTableModel?,
                  id: state.pathParameters['id'] ?? '',
                );
              },
              routes: [
                GoRoute(
                  path: RouteNames.selectChar.path,
                  name: RouteNames.selectChar.name,
                  builder: (context, state) {
                    final table = state.extra;
                    return SelectCharPage(
                      table: table as RpgTableModel?,
                      id: state.pathParameters['id'] ?? '',
                    );
                  },
                  routes: [
                    GoRoute(
                      path: RouteNames.createChar.path,
                      name: RouteNames.createChar.name,
                      builder: (context, state) {
                        return BlocProvider(
                          create: (context) => CreateCharBloc(),
                          child: CreateCharPage(),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        );
}
