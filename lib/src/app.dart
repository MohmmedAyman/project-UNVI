import 'package:flutter/material.dart';
import 'screens/login.dart';
import '../app_router.dart';

class App extends StatelessWidget {
  // final AppRouter appRouter;
  // const App({Key? key ,required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // onGenerateRoute: appRouter.genrateRoute,
      title: 'log in me',
      home: Scaffold(
        body: Login(),
      ),
    );
  }
}
