import 'package:dio/dio.dart';
import 'package:flutter_blog/_core/utils/my_http.dart';
import 'package:logger/logger.dart';
import 'package:flutter/material.dart';

class UserRepository {
  // 회원 가입 요청 - post 요청
  Future<Map<String, dynamic>> join(
      String username, String email, String password) async {
    // 1. 요청 데이터 구성 - map 구조로 설계
    final requestBody = {
      "username": username,
      "email": email,
      "password": password,
    };

    // 2. HTTP post 요청
    Response response = await dio.post("/join", data: requestBody);

    // 3. 응답 처리
    final responseBody = response.data; // body 데이터 모두
    Logger().d(responseBody); // 개발용 로깅 처리
    // 4. 리턴
    return requestBody;
  }

  // 로그인 요청

  // 자동 로그인

// UserRepository().join();
}

void main() {
  // Android 9 버전 이후부터 통신은 HTTPS 만 허용하게 기본 설정 됨
  UserRepository().join('test555', 't2@nate.com', '1234');
}
