import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class RegisterCustomerCall {
  static Future<ApiCallResponse> call({
    String? nik = '',
    String? email = '',
    String? name = '',
    String? password = '',
    String? confirmPassword = '',
    String? address = '',
    String? phone = '',
    bool? respon,
  }) async {
    final ffApiRequestBody = '''
{
  "ktp": "$nik",
  "email": "$email",
  "name": "$name",
  "password": "$password",
  "confirm_password": "$confirmPassword",
  "address": "$address",
  "phone": "$phone",
  "respon": $respon
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'register customer',
      apiUrl: 'https://stmik-banksampah.neumediradev.my.id/api/register',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  static List<String>? messagename(dynamic response) => (getJsonField(
        response,
        r'''$.message.name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? messagektp(dynamic response) => (getJsonField(
        response,
        r'''$.message.ktp''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? messageconfirm(dynamic response) => (getJsonField(
        response,
        r'''$.message.confirm_password''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? messageemail(dynamic response) => (getJsonField(
        response,
        r'''$.message.email''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? messagepassword(dynamic response) => (getJsonField(
        response,
        r'''$.message.password''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? messageaddress(dynamic response) => (getJsonField(
        response,
        r'''$.message.address''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? messagephone(dynamic response) => (getJsonField(
        response,
        r'''$.message.phone''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class LoginCustomerCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email":"$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login customer',
      apiUrl: 'https://stmik-banksampah.neumediradev.my.id/api/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? userrole(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.role''',
      ));
  static String? ccm(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.ccm''',
      ));
  static String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.phone''',
      ));
  static String? address(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.address''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.email''',
      ));
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.name''',
      ));
  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.id''',
      ));
  static dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  static bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
}

class ResetPasswordCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'reset password',
      apiUrl: 'https://stmik-banksampah.neumediradev.my.id/api/reset-password',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
  static List<String>? erroremail(dynamic response) => (getJsonField(
        response,
        r'''$.error.email''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class LogoutCustomerCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'logout customer',
      apiUrl: 'https://stmik-banksampah.neumediradev.my.id/api/logout',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class DashboardCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'dashboard',
      apiUrl: 'https://stmik-banksampah.neumediradev.my.id/api/dashboard',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  static dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.id''',
      ));
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.name''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.email''',
      ));
  static String? address(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.address''',
      ));
  static String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.phone''',
      ));
  static String? ccm(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.ccm''',
      ));
  static String? household(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.house_hold''',
      ));
  static String? poin(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.withdrawable_balance''',
      ));
  static String? holdpoin(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hold_balance''',
      ));
  static String? role(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.role''',
      ));
  static int? totaltrash(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.total_trash''',
      ));
}

class CreateScheduleCall {
  static Future<ApiCallResponse> call({
    String? pickupDate = '',
    String? pickupTime = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "pickup_date": "$pickupDate",
  "pickup_time": "$pickupTime"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create schedule',
      apiUrl:
          'https://stmik-banksampah.neumediradev.my.id/api/dashboard/schedule',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  static int? idcustomer(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.user_id_customer''',
      ));
  static String? numberorder(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.number_order''',
      ));
  static String? pickupdate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.pickup_date''',
      ));
  static String? pickuptime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.pickup_time''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.status''',
      ));
  static String? update(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.updated_at''',
      ));
  static String? creat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.created_at''',
      ));
  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.id''',
      ));
}

class CreateScheduleOneClickCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'create schedule one click',
      apiUrl:
          'https://stmik-banksampah.neumediradev.my.id/api/dashboard/schedule',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class HistoryCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'history',
      apiUrl:
          'https://stmik-banksampah.neumediradev.my.id/api/dashboard/schedule/history',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List<int>? dataid(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? useriddriver(dynamic response) => getJsonField(
        response,
        r'''$.data[:].user_id_driver''',
        true,
      ) as List?;
  static List<int>? useridcustomer(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].user_id_customer''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? numberorder(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].number_order''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pickupdate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].pickup_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pickuptime(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].pickup_time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? totalweight(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].total_weight''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? totalprice(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].total_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class HistoryDetailCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    int? historyId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'history detail',
      apiUrl:
          'https://stmik-banksampah.neumediradev.my.id/api/dashboard/schedule/history/$historyId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'historyId': historyId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static int? dataid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].id''',
      ));
  static int? useridcustomer(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].user_id_customer''',
      ));
  static String? numberorder(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].number_order''',
      ));
  static String? pickupdate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].pickup_date''',
      ));
  static String? pickuptime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].pickup_time''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].status''',
      ));
  static String? createdat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].created_at''',
      ));
  static String? updateat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].updated_at''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
