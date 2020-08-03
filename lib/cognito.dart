import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Cognito {
  static const MethodChannel _channel = const MethodChannel('cognito');

  static getUserContextData({
    @required String username,
    @required String userPoolId,
    @required String clientId,
  }) async {
    return _channel.invokeMethod('getUserContextData', {
      'username': username,
      'userPoolId': userPoolId,
      'clientId': clientId,
    });
  }
}
