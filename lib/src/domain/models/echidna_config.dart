library echidna_flutter;
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'echidna_config.freezed.dart';

/// Configuration for the Echidna API.
@freezed
@protected
class EchidnaConfig with _$EchidnaConfig {
  /// Configuration for the Echidna API.
  const factory EchidnaConfig({
    /// The base URL of the Echidna API.
    required String baseUrl,

    /// The client key to use for communicating with the Echidna API.
    required String clientKey,

    /// The client ID to use for communicating with the Echidna API.
    required int clientId,
  }) = _EchidnaConfig;

  const EchidnaConfig._();

  static EchidnaConfig? _instance;

  /// The global instance of [EchidnaConfig].
  ///
  /// Throws a [StateError] if the Echidna API has not been initialized.
  static EchidnaConfig get instance =>
      _instance ??
      (throw StateError('Echidna API not initialized. Make sure to call `initializeEchidnaApi` before using any Echidna API functionality.'));

  /// Sets the global instance of [EchidnaConfig].
  ///
  /// Internal use only.
  @protected
  factory EchidnaConfig.global({
    required String baseUrl,
    required String clientKey,
    required int clientId,
  }) {
    if (_instance != null) {
      throw StateError('Echidna API already initialized.');
    }

    return _instance = EchidnaConfig(baseUrl: baseUrl, clientKey: clientKey, clientId: clientId);
  }
}
