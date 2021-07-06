import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';



class Scan13State extends GetxController {
  var output = '';

  Future <void> scanResult() async {
    String codeScan = await FlutterBarcodeScanner.scanBarcode(
        "#ff7866", "Выйти", true, ScanMode.BARCODE);
    if (codeScan == '-1') {
      Get.snackbar('Ошибка', 'код не найден');
    } else {
      output = codeScan;
      update();
    }
    //     .then((result) {
    //   setState(() {
    //     _output = result;
    //   });
    // });
// Библиотека https://pub.dev/packages/flutter_barcode_scanner
// flutter_barcode_scanner 2.0.0
  }
}