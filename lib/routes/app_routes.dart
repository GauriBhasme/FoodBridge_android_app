import 'package:flutter/material.dart';
import '../pages/auth/login_page.dart';
import '../pages/auth/register_page.dart';
import '../pages/home/home_page.dart';
import '../pages/donation/donate_page.dart';
import '../pages/ngo/ngo_list_page.dart';

class AppRoutes {
  static const login = '/login';
  static const register = '/register';
  static const home = '/home';
  static const donate = '/donate';
  static const ngos = '/ngos';

  static final routes = {
    login: (context) => const LoginPage(),
    register: (context) => const RegisterPage(),
    home: (context) => const HomePage(),
    donate: (context) => const DonatePage(),
    ngos: (context) => const NGOListPage(),
  };
}
