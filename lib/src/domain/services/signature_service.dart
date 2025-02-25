library echidna_flutter;

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:echidna_flutter/src/echidna.dart';
import 'package:mcquenji_core/mcquenji_core.dart';

/// Signs requests sent to the server.
abstract class SignatureService extends Service implements Interceptor {
  @override
  String get name => 'Signature';

  /// Signs a request.
  String sign(String body);

  /// Verifies the signature of a request.
  bool verifySignature(Response response);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    options.headers['x-signature'] = sign(jsonEncode(options.data));
    options.headers['client-id'] = EchidnaConfig.instance.clientId;

    handler.next(options);
  }

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    if (!verifySignature(response)) {
      throw Exception('Invalid signature');
    }

    handler.next(response);
  }

  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) {
    handler.next(err);
  }
}
