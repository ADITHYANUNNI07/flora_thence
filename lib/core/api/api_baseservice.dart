import 'dart:convert';
import 'package:flora/core/config/api_config.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

class BaseApiService {
  final client = http.Client();

  Future<http.Response?> postApiCall(
    String? idToken,
    String apiUrl, {
    dynamic body,
    String? contentType,
  }) async {
    try {
      final url = Uri.parse(AppDevConfig.baseURL + apiUrl);
      debugPrint('api : $url body: $body');

      final response = await client.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $idToken',
        },
        body: jsonEncode(body),
      );

      logApiResponse(response);
      return response;
    } catch (e) {
      handleApiError('Post', e);
      return null;
    }
  }

  Future<http.Response?> getApiCall(
    String? firebaseToken,
    String apiUrl, {
    dynamic body,
    String? contentType,
  }) async {
    try {
      final url = Uri.parse(AppDevConfig.baseURL + apiUrl);
      final headers = firebaseToken != null
          ? {
              'Authorization': 'Bearer $firebaseToken',
            }
          : null;

      debugPrint('URL $url');

      final response = await client.get(
        url,
        headers: headers,
      );

      logApiResponse(response);
      return response;
    } catch (e) {
      handleApiError('Get', e);
      return null;
    }
  }

  Future<http.Response?> patchApiCall(
    String idToken,
    String apiUrl, {
    dynamic body,
    String? contentType,
  }) async {
    try {
      final url = Uri.parse(AppDevConfig.baseURL + apiUrl);
      debugPrint("url : $url");

      final response = await client.patch(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $idToken',
        },
        body: jsonEncode(body),
      );

      logApiResponse(response);
      return response;
    } catch (e) {
      handleApiError('Patch', e);
      return null;
    }
  }

  Future<http.Response?> putApiCall(
    String idToken,
    String apiUrl, {
    dynamic body,
    String? contentType,
  }) async {
    try {
      final url = Uri.parse(AppDevConfig.baseURL + apiUrl);

      final response = await client.put(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $idToken',
        },
        body: jsonEncode(body),
      );

      logApiResponse(response);
      return response;
    } catch (e) {
      handleApiError('Put', e);
      return null;
    }
  }

  Future<http.Response?> deleteApiCall(
    String firebaseToken,
    String apiUrl, {
    int? id,
  }) async {
    try {
      final url = Uri.parse(AppDevConfig.baseURL + apiUrl);

      final response = await client.delete(
        url,
        headers: {'Authorization': 'Bearer $firebaseToken'},
        body: jsonEncode({'id': id}),
      );

      logApiResponse(response);
      return response;
    } catch (e) {
      handleApiError('Delete', e);
      return null;
    }
  }
}

void handleApiError(String source, dynamic error) {
  debugPrint(' $source : Request Error: $error');
  Fluttertoast.showToast(msg: "An error occurred");
}

void logApiResponse(http.Response? response) {
  if (response != null) {
    debugPrint('Response status code : ${response.statusCode}');
    debugPrint('Response data: ${response.body}');
  }
}
