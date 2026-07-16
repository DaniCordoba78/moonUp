import 'package:go_router/go_router.dart';

import '../features/auth/presentation/pages/login_page.dart';
import '../features/clubs/presentation/pages/clubs_page.dart';
import '../features/events/presentation/pages/events_page.dart';
import '../features/home/presentation/pages/home_page.dart';
import '../features/profile/presentation/pages/profile_page.dart';
import '../features/splash/presentation/pages/splash_page.dart';
import '../features/tickets/presentation/pages/tickets_page.dart';

class AppRouter {
  AppRouter._();

  static final GoRouter router = GoRouter(
    initialLocation: '/',

    routes: [
      GoRoute(
        path: '/',
        name: 'splash',
        builder: (context, state) => const SplashPage(),
      ),

      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginPage(),
      ),

      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) => const HomePage(),
      ),

      GoRoute(
        path: '/profile',
        name: 'profile',
        builder: (context, state) => const ProfilePage(),
      ),

      GoRoute(
        path: '/events',
        name: 'events',
        builder: (context, state) => const EventsPage(),
      ),

      GoRoute(
        path: '/clubs',
        name: 'clubs',
        builder: (context, state) => const ClubsPage(),
      ),

      GoRoute(
        path: '/tickets',
        name: 'tickets',
        builder: (context, state) => const TicketsPage(),
      ),
    ],
  );
}