import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodePage extends StatelessWidget {
  const QrCodePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('QR code'),),
        body: Center(
          child: QrImage(
            version: QrVersions.auto,
            size: 200.0,
            errorCorrectionLevel: QrErrorCorrectLevel.M,
            data: 'https://pub.dev/packages/qr_flutter',
          ),
        ),
    );
  }
}