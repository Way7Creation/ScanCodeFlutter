import 'package:flutter/material.dart';
import 'package:scan13/Scan13.dart';
import 'package:flutter/services.dart';


void main()
{
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light
    ));

    runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark,
            primaryColor: Colors.lightGreen,
            accentColor: Colors.lightGreen,
            // Define the default font family.
            fontFamily: 'montserrat'
        ),
        home: Scan13(),
    ),
    );
}






