import 'package:flutter/material.dart';
import 'package:productos_app/screens/menu_screen.dart';
//import 'package:productos_app/screens/menu_screen.dart';
import 'package:provider/provider.dart';

import 'package:productos_app/screens/screens.dart';
import 'package:productos_app/services/services.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthService()),
        ChangeNotifierProvider(create: (_) => ProductsService()),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Productos App',
      initialRoute: 'login',
      routes: {
        'checking': (_) => CheckAuthScreen(),
        'home': (_) => HomeScreen(),
        'menu': (_) => MenuScreen(),
        'product': (_) => ProductScreen(),
        'login': (_) => LoginScreen(),
        'register': (_) => RegisterScreen(),
      },
      scaffoldMessengerKey: NotificationsService.messengerKey,
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Colors.grey[400],
          appBarTheme: AppBarTheme(elevation: 0, color: Colors.pink[900]),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.pink[900], elevation: 0)),
    );
  }
}
