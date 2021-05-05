import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:login_page/app/routes/app_pages.dart';

import '../../constants.dart';
import '../controllers/help_controller.dart';

class HelpView extends GetView<HelpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _menuTop(),
              SizedBox(
                height: 10,
              ),
              _circleIcon(),
              SizedBox(
                height: 40,
              ),
              _apresentation(),
              SizedBox(
                height: 70,
              ),
              _contact(),
              SizedBox(
                height: 100,
              ),
              _criateAccount(),
            ],
          ),
        ),
      ),
    );
  }

  _menuTop() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xFF4096C6),
            ),
            onPressed: () {
              Get.back();
            },
          ),
          PopupMenuButton<String>(
            icon: Icon(Icons.menu, color: Color(0xFF4096C6)),
            onSelected: choiceAction,
            itemBuilder: (BuildContext context) {
              return Constants.choices.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
    );
  }

  _circleIcon() {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF4096C6),
          border: Border.all(color: Color(0xFF4096C6)),
        ),
        child: Icon(Icons.help, color: Colors.white, size: 120),
      ),
    );
  }

  _apresentation() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Center(
        child: Text(
          'Help',
          style: TextStyle(color: Color(0xFF4096C6), fontSize: 40),
        ),
      ),
    );
  }

  _contact() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.smartphone, color: Color(0xFF4096C6)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "(+55) 00 00000000",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.mail, color: Color(0xFF4096C6)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "fulano@xmail.com",
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.map, color: Color(0xFF4096C6)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Itaboraí - São José.\n Rua Vinte, 4780",
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _criateAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RichText(
          text: TextSpan(
            text: "Don't have account..? ",
            style: TextStyle(
              color: Color(0xFF707070),
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Sign up',
                style: TextStyle(
                  color: Color(0xFF4096C6),
                  decoration: TextDecoration.underline,
                ),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () => Get.toNamed(Routes.REGISTER),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
