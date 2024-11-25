import 'package:flutter_modular/flutter_modular.dart';
import 'package:mcquenji_core/mcquenji_core.dart';

import 'domain/domain.dart';
import 'infra/infra.dart';
import 'presentation/presentation.dart';
import 'utils/utils.dart';

export 'domain/domain.dart';
export 'presentation/presentation.dart';
export 'utils/utils.dart';

/// Module for using the echidna client sdk.
///
/// To use this module, import it in your application and call [LicenseRepoX.initializeLicenseRepo] to initialize the license repository:
///
/// ```dart
/// class MyAuthModule extends Module {
///   @override
///   List<Module> get imports => [
///     EchidnaModule(),
///   ];
///
///   @override
///   void binds(Injector i) {
///     // add your other bindings here
///     i.initializeLicenseRepo(MyUserIdRepository.new); // this should be called last
///   }
/// }
/// ```
///
/// Also, make sure to call [initializeEchidnaApi].
///
/// After that you can use [FeatureGuard] to guard your routes based on the license status.
///
/// ```dart
/// class MyFeatureModule extends Module {
///   @override
///   List<Module> get imports => [
///     MyAuthModule(),
///   ];
///
///   @override
///   void routes(RouteManager r) {
///     r.guard('/my-feature', guards: [FeatureGuard(myFeatureId)]);
///   }
/// }
/// ```
///
/// Note that you need to implement [UserIdRepository] in your application.
class EchidnaModule extends Module {
  @override
  List<Module> get imports => [
        CoreModule(),
      ];

  @override
  void exportedBinds(Injector i) {
    i
      ..add<EchidnaConfig>(() => EchidnaConfig.instance)
      ..add<EchidnaApiService>(StdEchidnaApiService.new)
      ..add<LicenseStatusDatasource>(StdLicenseStatusDatasource.new);
  }

  @override
  void routes(RouteManager r) {}
}

/// Initializes the Echidna API with the given [baseUrl] and [clientKey].
///
/// This must be called before using any Echidna API functionality, preferably in the `main` method.
///
/// ```dart
/// void main() {
///   initializeEchidnaApi(baseUrl: 'https://echidna.your.domain', clientKey: 'your-client');
///   runApp(MyApp());
/// }
/// ```
///
/// It is recommended to use compile-time constants for the `baseUrl` and `clientKey` values.
///
/// ```dart
/// void main() {
///   initializeEchidnaApi(
///     baseUrl: String.fromEnvironment('ECHIDNA_URL'),
///     clientKey: String.fromEnvironment('ECHIDNA_CLIENT_KEY'),
///   );
///   runApp(MyApp());
/// }
/// ```
///
/// Throws a [StateError] if the Echidna API has already been initialized.
void initializeEchidnaApi({required String baseUrl, required String clientKey, required int clientId}) {
  EchidnaConfig.global(baseUrl: baseUrl, clientKey: clientKey, clientId: clientId);
}
