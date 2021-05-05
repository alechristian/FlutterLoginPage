import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:login_page/app/routes/app_pages.dart';

import '../../constants.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _menuTop(),
              SizedBox(
                height: 10,
              ),
              circleIcon(),
              SizedBox(
                height: 50,
              ),
              _apresentation(),
              _loginAndPassword(),
              SizedBox(
                height: 110,
              ),
              _loginButtom(),
              SizedBox(
                height: 40,
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

  circleIcon() {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF4096C6),
          border: Border.all(color: Color(0xFF4096C6)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Icon(Icons.add_a_photo, color: Colors.white, size: 80),
        ),
      ),
    );
  }

  _apresentation() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Center(
        child: Text(
          'Register',
          style: TextStyle(color: Color(0xFF4096C6), fontSize: 40),
        ),
      ),
    );
  }

  _loginAndPassword() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 7),
                child: Icon(
                  Icons.person_outline,
                  color: Color(0xFF707070),
                  size: 24,
                ),
              ),
              Container(
                height: 50,
                width: 270,
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black45)),
                    hintText: 'Username',
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 7),
                child: Icon(
                  Icons.person_outline,
                  color: Color(0xFF707070),
                  size: 24,
                ),
              ),
              Container(
                height: 50,
                width: 270,
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black45)),
                    hintText: 'Email',
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 7),
                child: Icon(
                  Icons.lock_outlined,
                  color: Color(0xFF707070),
                  size: 24,
                ),
              ),
              Container(
                height: 50,
                width: 270,
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black45)),
                    hintText: 'Password',
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 7),
                child: Icon(
                  Icons.lock_outlined,
                  color: Color(0xFF707070),
                  size: 24,
                ),
              ),
              Container(
                height: 50,
                width: 270,
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black45)),
                    hintText: 'Confirm PassWord',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _loginButtom() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Sign Up',
            style: TextStyle(color: Color(0xFF4096C6), fontSize: 24),
          ),
          Center(
              child: MaterialButton(
            onPressed: () {
              print('REGISTERREGISTER');
            },
            color: Color(0xFF4096C6),
            textColor: Colors.white,
            child: Icon(
              Icons.arrow_forward_ios_sharp,
              size: 24,
            ),
            padding: EdgeInsets.all(16),
            shape: CircleBorder(),
          ))
        ],
      ),
    );
  }

  Widget _criateAccount() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RichText(
            text: TextSpan(
              text: "Already have an account?  ",
              style: TextStyle(
                color: Color(0xFF707070),
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Logn In',
                  style: TextStyle(
                    color: Color(0xFF4096C6),
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () => Get.toNamed(Routes.LOGIN),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
