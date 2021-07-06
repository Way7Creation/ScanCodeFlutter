import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'package:scan13/pagecontrol.dart';



class Scan13 extends StatelessWidget {

  Scan13(){
    Get.put(Scan13State());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        shadowColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
        ),
        title: Text(
          'Сканер EAN13',
          style: TextStyle(
            fontSize: 26.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Spacer(),
            Text(
                'Результат',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30)),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.only(top: 20.0),
              width: 350,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(20)),

              child: Container(
                child:GetBuilder<Scan13State>(
                  builder: (controller) {
                    return Text(
                      controller.output, // передача на экран резуьтата сканирования
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        color: Color(0xFF393E46),
                        fontWeight: FontWeight.w600,),);
                  })
              ),
            ),
            Spacer(),
            Text(
                'Для сканирования\nнажмите кнопку',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w100),
              ),
            SizedBox(
              width: 120,
              height: 120,
              child: Container(
                margin: EdgeInsets.all(15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(800.0)
                      ),
                      shadowColor: Colors.white,
                      primary: Colors.lightGreen),
                  onPressed: () {
                    Get.find<Scan13State>().scanResult();
                  }, // переход на экран сканирования
                  child: Transform.rotate(
                    angle: 90 * 3.14 / 180,
                    child: Icon(Icons.document_scanner,
                        size: 50, color: Color(0xFF393E46)),
                  ),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
