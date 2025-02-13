library echidna_flutter;

import 'package:echidna_flutter/src/echidna.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';

/// Guards access to a route based on the user's license.
///
/// If [kDebugMode] is true, this guard will always return true.
class FeatureGuard extends RouteGuard {
  /// The ids of features that must be unlocked by the user's license.
  ///
  /// These ids can be found in the Echidna WebUI.
  final List<int> features;

  /// Guards access to a route based on the user's license.
  ///
  /// If [kDebugMode] is true, this guard will always return true.
  FeatureGuard(this.features, {super.redirectTo});

  @override
  Future<bool> canActivate(String path, ModularRoute route) async {
    if (kDebugMode) return true;

    final license = Modular.get<LicenseRepository>();

    await license.ready;

    if (!license.state.hasData) {
      return false;
    }

    final unlockedFeatures = license.state.requireData.featureClaims.map((c) => c.feature.id);

    if (!features.every(unlockedFeatures.contains)) {
      return false;
    }

    return true;
  }
}
