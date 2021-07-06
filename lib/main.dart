import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:scan13/Scan13.dart';
import 'package:flutter/services.dart';


void main()
{
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light
    ));

    runApp(MyApp());
}
    class MyApp extends StatelessWidget {

      @override
      Widget build(BuildContext context) {
        return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(brightness: Brightness.dark,
                primaryColor: Colors.lightGreen,
                accentColor: Colors.lightGreen,
                // Define the default font family.
                fontFamily: 'montserrat'),
            getPages: [
                GetPage(name: '/', page: () => Scan13())
            ],
        );
      }
    }





