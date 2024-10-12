import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart'; // Functional programming in Dart
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:travel_app/core/server/handling_status_code.dart';
import 'package:travel_app/core/server/parse_response.dart';
import 'package:travel_app/core/server/status_request.dart';

class ApiHelper {
  /// Static method to make HTTP requests.
  static Future<Either<ErrorResponse, Map<String, dynamic>>> makeRequest({
    required String targetRout,
    Map<String, dynamic>? data,
    required String method,
    String? token,
    Map<String, File>? files,
  }) async {
    try {
      Map<String, String> headers = {
        'Accept': 'application/json',
        "Access-Control-Allow-Origin": "*",
        'Content-Type': 'application/json',
      };

      if (token != null) {
        headers['Authorization'] = 'Bearer $token';
      }

      http.Response response;

      if (files != null && files.isNotEmpty) {
        Uri url = Uri.parse(targetRout);
        var request = http.MultipartRequest(method, url);
        request.headers.addAll(headers);
        data?.forEach((key, value) {
          request.fields[key] = value.toString();
        });
        files.forEach((key, value) async {
          var multipartFile = await http.MultipartFile.fromPath(key, value.path,
              contentType: MediaType('application', 'octet-stream'));
          request.files.add(multipartFile);
        });
        var streamedResponse = await request.send();
        response = await http.Response.fromStream(streamedResponse);
      } else {
        Uri url = Uri.parse(targetRout);
        switch (method.toUpperCase()) {
          case 'POST':
            response =
                await http.post(url, body: jsonEncode(data), headers: headers);
            break;
          case 'PUT':
            response =
                await http.put(url, body: jsonEncode(data), headers: headers);
            break;
          case 'GET':
            response = await http.get(url, headers: headers);
            break;
          case 'DELETE':
            response = await http.delete(url, headers: headers);
            break;
          default:
            throw UnimplementedError('HTTP method $method not supported');
        }
      }
      print(response.body);
      print(response.statusCode);

      if (response.statusCode >= 200 && response.statusCode < 300) {
// print(response.body);
        return Right(jsonDecode(response.body));
        // return Right({});
      } else {
        return Left(ErrorResponse.fromJson(
            response.statusCode, jsonDecode(response.body)));
      }
    } catch (e) {
      print(e);
      return Left(ErrorResponse.fromJson(500, {"message": "server error"}));
    }
  }
}
