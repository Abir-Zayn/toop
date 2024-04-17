import '../pages/edit_profile_page.dart';
import '../pages/home_page.dart';
import '../pages/login_page.dart';
import '../pages/main_page.dart';
import '../pages/nearby_page.dart';

class AppRoutes{

  static final pages = {
  login: (context) => loginPage(),
  home: (context) => const homePage(),
  main : (context) => const MainPage(),
  editProfile : (context) => const editProfilePage(),
  nearby : (context) => const NearbyPage(),
  };

  static const login = '/login';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/editProfile';
  static const nearby = '/nearby';
}