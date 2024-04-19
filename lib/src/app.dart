import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:halagula_app/src/utils/routes/appPages.dart';

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        fontFamily: 'Popins',
      ),
      // home: const Text('data'),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      // onUnknownRoute: (RouteSettings rs) => MaterialPageRoute(
      //   builder: (context) {
      //     return ErrorView(
      //       // icon: UIDataVector.vectorSadSmiley,
      //       message: 'Coming Soon!',
      //     );
      //   },
      // ),
    );
  }
}
