import 'dart:async';

import 'package:echidna_dto/echidna_dto.dart';
import 'package:echidna_flutter/modules/echidna/echidna.dart';
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
  FutureOr<void> build(Type trigger) {
    final userId = _userId.state.requireData.userId;

    log('Getting license status for user $userId');

    guard(
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
