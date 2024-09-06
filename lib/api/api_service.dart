import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';

class APIService {
  static final errorCodes = [400, 401, 403, 404, 500];

  static final headers = {
    'Content-Type': 'application/json',
    'API-Key': dotenv.get('API_KEY', fallback: ''),
  };

  static Map<String, String> headersWithAuth(String token) {
    final newHeaders = Map<String, String>.from(headers);
    newHeaders["Authorization"] = "Bearer $token";
    return newHeaders;
  }

  static bool isError(Response response) {
    return errorCodes.contains(response.statusCode);
  }

  static bool isAuthError(Response response) {
    return [401, 403].contains(response.statusCode);
  }
}


class APIRoutes {
  static const baseURL = "192.168.7.113:8000";
  static const _prefix = "api/v1";

  // AUTH
  static String login = "$_prefix/auth/login";
  static String logout = "$_prefix/auth/logout";
  static String register = "$_prefix/auth/register";
  static String refresh = "$_prefix/auth/refresh";

  // USERS
  static String getUser (String id) => "$_prefix/users/$id";
}