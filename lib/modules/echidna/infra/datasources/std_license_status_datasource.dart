import 'package:echidna_dto/echidna_dto.dart';
import 'package:echidna_flutter/modules/echidna/echidna.dart';

/// Standard implementation of [LicenseStatusDatasource].
class StdLicenseStatusDatasource extends LicenseStatusDatasource {
  final EchidnaApiService _api;

  /// Standard implementation of [LicenseStatusDatasource].
  StdLicenseStatusDatasource(this._api);

  @override
  void dispose() {
    _api.dispose();
  }

  @override
  Future<LicenseStatus> getLicenseStatus(String userId) async {
    try {
      final response = await _api.post('/verify', body: {'userId': userId});

      return LicenseStatus.fromJson(response.body!.right);
    } catch (e, s) {
      log('Failed to get license status', e, s);

      rethrow;
    }
  }
}
