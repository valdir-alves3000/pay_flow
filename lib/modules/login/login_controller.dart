import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:playflow/auth/auth_controller.dart';

class LoginController {
  final authController = AuthController();
  Future<void> googleSigIn(BuildContext context) async {
    GoogleSignIn _googleSigIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );

    try {
      final response = await _googleSigIn.signIn();
      authController.setUser(context, response);
      print(response);
    } catch (error) {
      authController.setUser(context, null);
      print(error);
    }
  }
}
