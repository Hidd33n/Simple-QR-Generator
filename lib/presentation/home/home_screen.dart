import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrgenerator/core/customwidgets/customappbar.dart';
import 'package:qrgenerator/core/customwidgets/custombutton.dart';
import 'package:qrgenerator/core/customwidgets/textfield.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _linkController = TextEditingController();
  GlobalKey _qrKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'QR Generator'),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  controller: _linkController,
                  labelText: 'Enter Link',
                ),
                const SizedBox(height: 16.0),
                const CustomButton(),
                const SizedBox(height: 16.0),
                Expanded(
                  child: Center(
                    child: QrImageView(
                      data: _linkController.text,
                      key: _qrKey,
                      size: 400.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
