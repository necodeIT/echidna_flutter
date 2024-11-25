library echidna_flutter;

import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:echidna_flutter/src/echidna.dart';

/// Injects the license repository.
extension LicenseRepoX on Injector {
  /// Initializes the license repository.
  void initializeLicenseRepo(Function userIdRepositoryConstructor) {
    addRepository<UserIdRepository>(userIdRepositoryConstructor);
    addRepository(LicenseRepository.new);
  }
}
