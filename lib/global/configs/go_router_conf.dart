import 'package:didpoolfit/modules/home/home_page.dart';
import 'package:didpoolfit/modules/auth/login/login_page.dart';
import 'package:didpoolfit/modules/auth/login/login_success_page.dart';
import 'package:didpoolfit/modules/auth/register/choose_program_page.dart';
import 'package:didpoolfit/modules/auth/register/complete_profile_page.dart';
import 'package:didpoolfit/modules/auth/register/register_page.dart';
import 'package:didpoolfit/modules/dashboard/dashboard_page.dart';
import 'package:didpoolfit/modules/welcome/welcome_page.dart';
import 'package:go_router/go_router.dart';

final routers = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      name: "home",
      path: "/home",
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      name: "dashboard",
      path: "/dashboard",
      builder: (context, state) => const DashboardPage(),
    ),
    GoRoute(
      name: 'welcome',
      path: '/welcome',
      builder: (context, state) => const WelcomePage(),
    ),
    GoRoute(
      name: 'register',
      path: '/register',
      builder: (context, state) => const RegisterPage(),
    ),
    GoRoute(
      name: 'complete-profile',
      path: '/register/complete-profile',
      builder: (context, state) {
        final Map<String, String> userData = state.extra as Map<String, String>;
        return CompleteProfilePage(userData: userData);
      },
    ),
    GoRoute(
      name: 'choose-program',
      path: '/register/complete-profile/choose-program',
      builder: (context, state) {
        final Map<String, dynamic> userData =
            state.extra as Map<String, dynamic>;
        return ChooseProgramPage(userData: userData);
      },
    ),
    GoRoute(
      name: 'login',
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      name: 'login-success',
      path: '/login/login-success',
      builder: (context, state) => const LoginSuccessPage(),
    ),
  ],
);
