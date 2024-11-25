library echidna_flutter;
import 'package:echidna_dto/echidna_dto.dart';
import 'package:mcquenji_core/mcquenji_core.dart';

/// Datasource for getting the license status.
abstract class LicenseStatusDatasource extends Datasource {
  @override
  String get name => 'LicenseStatus';

  /// Gets the license status for the given [userId].
  Future<LicenseStatus> getLicenseStatus(String userId);
}
