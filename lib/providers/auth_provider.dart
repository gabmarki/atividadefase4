import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  String _jwtToken = "simulated_token_123";
  bool _isAuthenticated = true;

  String get token => _jwtToken;
  bool get isAuthenticated => _isAuthenticated;

  void login() {
    _isAuthenticated = true;
    notifyListeners();
  }

  void logout() {
    _isAuthenticated = false;
    _jwtToken = "";
    notifyListeners();
  }
}
