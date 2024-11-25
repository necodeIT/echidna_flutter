# Echidna Flutter

Client SDK for [echidna_service](https://github.com/necodeIT/echidna_server). Use this library to verify licenses and features unlocked by them.

# Installation

## Add dependency to your project

To get started add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  echidna_flutter:
    git:
      url: https://github.com/necodeIT/echidna_flutter.git
```

## Initialize the SDK

Call the `initializeEchidnaApi` method in your main method before running the app.

```dart
import 'package:echidna_flutter/echidna_flutter.dart';

void main() {
    initializeEchidnaApi(baseUrl: 'https://echidna.your.domain', clientKey: 'your-client-key'; clientId: your-client-id);
    runApp(MyApp());
}
```

## Use the SDK

You now can use the SDK to verify licenses and features unlocked by them.

```dart
import 'package:echidna_flutter/echidna_flutter.dart';

class MyFeature extends Module {}

class AppModule extends Module {
  @override
  void routes(RouteManager r){
    r.module('/my-feature', module: MyFeature(), g);
  }
}
