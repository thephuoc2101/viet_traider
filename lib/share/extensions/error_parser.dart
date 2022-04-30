import 'package:dio/dio.dart';

import 'code_error.dart';

extension ErrorParser on DioError {
  String? toCode() {
    try {
      if (this.response?.data != null) {
        final errors = this.response?.data['errorMessages'] as List<dynamic>;
        if (errors.isEmpty) return null;
        final mes = (errors[0]['errorCode'] as String).fromCode();
        return mes;
      }
    } catch (e) {
      print(e);
    }
  }

  List<String>? toCodes() {
    try {
      if (this.response?.data != null) {
        final errors = this.response?.data['errorMessages'] as List<dynamic>;

        return List<String>.generate(errors.length,
            (index) => (errors[index]['errorCode'] as String).fromCode());
      }
    } catch (e) {
      print(e);
    }
  }

  String? toMessage() {
    try {
      if (this.response?.data != null) {
        final errors = this.response?.data['errorMessages'] as List<dynamic>;
        if (errors.isEmpty) return null;
        final mes = errors[0]['errorMessage'] as String;
        return mes;
      }
    } catch (e) {
      print(e);
    }
  }

  List<String>? toMessages() {
    try {
      if (this.response?.data != null) {
        final errors = this.response?.data['errorMessages'] as List<dynamic>;
        if (errors.isEmpty) return null;
        return List<String>.generate(
            errors.length, (index) => errors[index]['errorMessage'] as String);
      }
    } catch (e) {
      print(e);
    }
  }
}
