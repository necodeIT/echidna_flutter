library echidna_flutter;

import 'package:echidna_flutter/src/echidna.dart';
import 'package:flutter_modular/flutter_modular.dart';

/// Guards access to a route based on the user's license.
class FeatureGuard extends RouteGuard {
  /// The ids of features that must be unlocked by the user's license.
  ///
  /// These ids can be found in the Echidna WebUI.
  final List<int> features;

  /// Guards access to a route based on the user's license.
  FeatureGuard(this.features);

  @override
  Future<bool> canActivate(String path, ModularRoute route) async {
    final license = Modular.get<LicenseRepository>().state;

    if (!license.hasData) {
      return false;
    }

    final unlockedFeatures = license.requireData.featureClaims.map((c) => c.feature.id);

    if (!features.every(unlockedFeatures.contains)) {
      return false;
    }

    return true;
  }
}
