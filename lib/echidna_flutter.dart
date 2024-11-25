/// # Echidna Flutter
///
/// Client SDK for [echidna_server](https://github.com/necodeIT/echidna_server). Use this library to verify licenses and features unlocked by them.
///
/// # Installation
///
/// ## Add dependency to your project
///
/// To get started add the following dependency to your `pubspec.yaml` file:
///
/// ```yaml
/// dependencies:
///   echidna_flutter:
///     git:
///       url: https://github.com/necodeIT/echidna_flutter.git
/// ```
///
/// ## Initialize the SDK
///
/// Call the `initializeEchidnaApi` method in your main method before running the app.
///
/// ```dart
/// import 'package:echidna_flutter/echidna_flutter.dart';
///
/// void main() {
///     initializeEchidnaApi(baseUrl: 'https://echidna.your.domain', clientKey: 'your-client-key'; clientId: your-client-id);
///     runApp(MyApp());
/// }
/// ```
///
/// ## Implement UserIdRepository
///
/// For the SDK to work you need to implement a `UserIdRepository` that provides the current user id.
///
/// ```dart
/// import 'package:echidna_flutter/echidna_flutter.dart';
///
/// class MyUserIdRepository extends UserIdRepository {}
/// ```
///
/// You're most likely going to connect this to your preexisting user management system.
///
/// ```dart
/// import 'package:echidna_flutter/echidna_flutter.dart';
///
/// class MyUserIdRepository extends UserIdRepository {
///   final UserRepository _user;
///
///   MyUserIdRepository(this._user) {
///     watchAsync(_user);
///   }
///
///   @override
///   FutureOr<void> build(Type trigger){
///     data(_user.id);
///   }
/// }
/// ```
///
/// ## Initialize LicenseRepository
///
/// You also need to initialize the `LicenseRepository` with the `UserIdRepository` you just implemented (most likely in your auth module).
///
/// ```dart
/// import 'package:echidna_flutter/echidna_flutter.dart';
///
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
/// ## Use the SDK
///
/// Finally, you now can use the SDK to verify licenses and features unlocked by them.
///
/// ```dart
/// import 'package:echidna_flutter/echidna_flutter.dart';
///
/// class MyFeature extends Module {}
///
/// class AppModule extends Module {
///   @override
///   void routes(RouteManager r){
///     r.module('/my-feature', module: MyFeature(), guards: [FeatureGuard(myFeatureId)]);
///   }
/// }
/// ```
///
library echidna_flutter;

export 'src/echidna.dart';
