library echidna_flutter;

import 'dart:async';

import 'package:echidna_dto/echidna_dto.dart';
import 'package:echidna_flutter/src/echidna.dart';
import 'package:flutter/foundation.dart';
import 'package:mcquenji_core/mcquenji_core.dart';

/// Holds the license status for the current user.
class LicenseRepository extends Repository<AsyncValue<LicenseStatus>> {
  final LicenseStatusDatasource _datasource;
  final UserIdRepository _userId;

  /// Holds the license status for the current user.
  LicenseRepository(this._datasource, this._userId) : super(AsyncValue.loading()) {
    watchAsync(_userId);
  }

  @override
  FutureOr<void> build(Type trigger) async {
    if (kDebugMode) {
      log('Debug mode: skipping license status check');

      data(
        LicenseStatus(
          licenseKey: 'debug',
          active: true,
          featureClaims: [],
          activationDate: DateTime.now(),
          expirationDate: DateTime.now().add(const Duration(days: 30)),
        ),
      );

      return;
    }

    final userId = _userId.state.requireData.userId;

    log('Getting license status for user $userId');

    await guard(
      () => _datasource.getLicenseStatus(userId),
      onError: (e, s) => log('Failed to get license status for user $userId', e, s),
      onData: (status) => log('Got license status for user $userId: $status'),
    );
  }

  @override
  void dispose() {
    _datasource.dispose();
    super.dispose();
  }
}
