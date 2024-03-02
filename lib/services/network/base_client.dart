import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:get_storage/get_storage.dart';

import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'package:task_app/services/network/apipath.dart';
import 'package:task_app/services/network/http_exception.dart';

final storage = GetStorage();

class ApiHelper {
  ApiHelper._() {
    _init(); //initiallze offline cache
  }

  static final ApiHelper _instance = ApiHelper._();
  static ApiHelper get instance => _instance;

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: ApiPath.baseUrl,
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader: '*',
        'X-RapidAPI-Key': '403c80a6f4msh2f991496e924dd6p155811jsn4e46e8181d6e',
        'X-RapidAPI-Host': 'bhagavad-gita3.p.rapidapi.com'
      },
    ),
  );

  //for cache of app
  void _init() async {
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        return handler.next(options);
      },
      onResponse:
          (Response response, ResponseInterceptorHandler handler) async {
        return handler.next(response);
      },
      onError: (DioException error, ErrorInterceptorHandler handler) async {
        return handler.next(error); //continue
      },
    ));

    if (!kReleaseMode) {
      _dio.interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90));
    }
    //this is for avoiding certificates error cause by dio
    (_dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
      HttpClient client = HttpClient();
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
  }

  /// return response body or throws [NetworkExceptions]
  Future<dynamic> get(
    String uri, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final res = await _dio.get(
        uri,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      log("res--> $res");
      return res.data;
    } on DioException catch (e) {
      if (e.response!.data != null) {
        log("error map not null --> ${e.response}");
        if (e.response!.data is Map) {
          log("error map -->");
          if (e.response!.data['message'] is List) {
            throw CustomHttpException(
                message: e.response!.data['message'][0],
                statusCode: e.response!.statusCode,
                title: e.response!.data['error']);
          } else {
            throw CustomHttpException(
                message: e.response!.data['message'],
                statusCode: e.response!.statusCode,
                title: e.response!.data['error']);
          }
        } else {
          throw CustomHttpException(
            message: e.response!.data,
            statusCode: e.response!.statusCode,
            title: e.message,
          );
        }
      } else {
        var networkExceptions = "";
        if (e.error is SocketException) {
          networkExceptions = "No internet connection";
        } else if (e.error is FormatException) {
          networkExceptions = "Format exception";
        } else {
          networkExceptions = "Unexpected error";
        }
        throw CustomHttpException(
            message: "Try again later",
            statusCode: e.response?.statusCode ?? 0,
            title: networkExceptions);
      }
    }
  }

  /// return response body or throws [NetworkExceptions]
  Future<dynamic> post(
    String uri, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      //   _dio.options.headers[HttpHeaders.contentTypeHeader] =
      //     "multipart/form-data";
      // _dio.options.headers[HttpHeaders.acceptHeader] = "multipart/form-data";
      final res = await _dio.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );

      return res.data;
    } on DioException catch (e) {
      log("error $e");
      if (e.response!.data != null) {
        log("error map not null --> ${e.response}");

        if (e.response!.data is Map) {
          if (e.response!.data['message'] is List) {
            throw CustomHttpException(
                message: e.response!.data['message'][0],
                statusCode: e.response!.statusCode,
                title: e.response!.data['error']);
          } else {
            throw CustomHttpException(
                message: e.response!.data['message'],
                statusCode: e.response!.statusCode,
                title: e.response!.data['error']);
          }
        } else {
          throw CustomHttpException(
            message: e.response!.data,
            statusCode: e.response!.statusCode,
            title: e.message,
          );
        }
      } else {
        var networkExceptions = "";
        if (e.error is SocketException) {
          networkExceptions = "No internet connection";
        } else if (e.error is FormatException) {
          networkExceptions = "Format exception";
        } else {
          networkExceptions = "Unexpected error";
        }
        throw CustomHttpException(
            message: "Try again later",
            statusCode: e.response?.statusCode ?? 0,
            title: networkExceptions);
      }
    }
  }
}
