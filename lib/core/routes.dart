import 'package:photo_surfing/screen/photo_view.dart';
import 'package:photo_surfing/screen/view.dart';

final routes = {
  '/login_screen': (context) => LoginScreen(),
  '/register_screen': (context) => RegisterScreen(),
  '/main_screen': (context) => MainScreen(),
  '/continue_register_screen': (context) => ContinueRegisterScreen(),
  '/detail_photo_screen': (context) => PhotoView(),
};