import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playflow/modules/home/home_page.dart';
import 'package:playflow/modules/login/login_page.dart';

class AuthController {
  bool _isAuthenticated = false;
  var _user;

  get user => _user;

  void setUser(BuildContext context, var user) {
    if (user != null) {
      _isAuthenticated = true;
      Navigator.pushReplacementNamed(context, "/home");
    } else {
      _isAuthenticated = false;
      Navigator.pushReplacementNamed(context, "/login");
    }
  }
}
