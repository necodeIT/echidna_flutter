library echidna_flutter;

import 'package:echidna_flutter/src/echidna.dart';
import 'package:mcquenji_core/mcquenji_core.dart';

/// {@template user_id_repository}
/// Holds the user ID for the current user.
///
/// This repository must be implemented by the application using this package (see [LicenseRepoX.initializeLicenseRepo]).
/// {@endtemplate}
abstract class UserIdRepository extends Repository<AsyncValue<UserID>> {
  /// {@macro user_id_repository}
  UserIdRepository() : super(AsyncValue.loading());
}
