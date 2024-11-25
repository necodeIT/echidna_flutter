import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:echidna_flutter/modules/echidna/echidna.dart';

/// Hmac implementation of [SignatureService].
class HmacSignatureService extends SignatureService {
  @override
  void dispose() {}

  @override
  String sign(String body) {
    return Hmac(
      sha256,
      utf8.encode(EchidnaConfig.instance.clientKey),
    ).convert(utf8.encode(body)).toString();
  }

  @override
  bool verifySignature(Response response) {
    final signature = response.headers['x-signature']?.first;

    if (signature == null) {
      return false;
    }

    final body = response.data.toString();
    return signature == sign(body);
  }
}
