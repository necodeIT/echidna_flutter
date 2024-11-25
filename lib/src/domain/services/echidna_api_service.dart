library echidna_flutter;
import 'package:either_dart/either.dart';
import 'package:mcquenji_core/mcquenji_core.dart';

/// Handles communication with the Echidna API.
abstract class EchidnaApiService extends Service {
  @override
  String get name => 'EchidnaApi';

  /// Sends a GET request to the license server.
  Future<HttpResponse<Either<List<JSON>, JSON>>> get(
    String path, {
    Object? pathParameter,
    Map<String, String> queryParameters = const {},
  });

  /// Sends a POST request to the license server.
  Future<HttpResponse<Either<List<JSON>, JSON>>> post(
    String path, {
    Object? pathParameter,
    Map<String, String> queryParameters = const {},
    Map<String, dynamic> body = const {},
  });

  /// Sends a PUT request to the license server.
  Future<HttpResponse<Either<List<JSON>, JSON>>> put(
    String path, {
    Object? pathParameter,
    Map<String, String> queryParameters = const {},
    Map<String, dynamic> body = const {},
  });

  /// Sends a DELETE request to the license server.
  Future<HttpResponse<Either<List<JSON>, JSON>>> delete(
    String path, {
    Object? pathParameter,
    Map<String, String> queryParameters = const {},
  });

  /// Sends a PATCH request to the license server.
  Future<HttpResponse<Either<List<JSON>, JSON>>> patch(
    String path, {
    Object? pathParameter,
    Map<String, String> queryParameters = const {},
    Map<String, dynamic> body = const {},
  });
}
