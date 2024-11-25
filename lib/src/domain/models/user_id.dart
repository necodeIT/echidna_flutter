library echidna_flutter;
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_id.freezed.dart';

/// Wrapper class for a user ID.
///
/// Used to pass around an ID through the dependency injection system, without conflicting with other strings.
@freezed
class UserID with _$UserID {
  /// Wrapper class for a user ID.
  ///
  /// Used to pass around an ID through the dependency injection system, without conflicting with other strings.
  const factory UserID({
    required String userId,
  }) = _UserID;

  const UserID._();
}
