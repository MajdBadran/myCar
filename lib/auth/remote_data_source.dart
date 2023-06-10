import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycar/core/common/models/post_model.dart';
import 'package:mycar/core/managers/constant/cash_keys_constant.dart';
import 'package:mycar/core/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/server/api.dart';
import '../core/server/api_url.dart';

class RemoteDataSource {
  final Api api = ApiImpl();

  Future<UserModel> login(String email, String password) async {
    try {
      final request = ApiRequest(url: ApiUrl.login, params: {
        "email": email,
        "password": password,
      }, headers: {
        "Accept": "Application/json"
      });
      final response = await api.post(request);
      final body = response.body;
      if (body is Map) {
        final success = response.body!['status'];
        if (success) {
          final token = body['token'] ?? "";
          final Map user = body['data']['user'];
          SharedPreferences shared = await SharedPreferences.getInstance();
          shared.setString(CashKeys.token, token);
          shared.setString(CashKeys.user, jsonEncode(user));
          return UserModel.fromMap(user as Map<String, dynamic>);
        } else {
          Get.snackbar(
            'Faild',
            'Your email is password is wrong',
            colorText: Colors.black,
            backgroundColor: Colors.white,
            snackPosition: SnackPosition.BOTTOM,
            maxWidth: Get.width,
          );
          throw Exception();
        }
      } else {
        throw Exception("");
      }
    } catch (e) {
      Get.snackbar(
        'Faild',
        'Some thing wrong',
        colorText: Colors.black,
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        maxWidth: Get.width,
      );
      throw Exception();
    }
  }

  Future<UserModel> register(
      {required String email,
      required String password,
      required String name,
      required String phone}) async {
    try {
      final request = ApiRequest(url: ApiUrl.register, params: {
        "email": email,
        "password": password,
        "name": name,
        "cell_phone": phone,
        "subscription_package_id": 2
      }, headers: {
        "Accept": "Application/json"
      });
      final response = await api.post(request);
      final body = response.body;
      if (body is Map) {
        final success = response.body!['status'];
        if (success) {
          final token = body['token'] ?? "";
          final Map user = body['data'];
          SharedPreferences shared = await SharedPreferences.getInstance();
          shared.setString(CashKeys.token, token.toString());
          shared.setString(CashKeys.user, jsonEncode(user));
          return UserModel.fromMap(user as Map<String, dynamic>);
        } else {
          Get.snackbar(
            'Faild',
            'Your email is password is wrong',
            colorText: Colors.black,
            backgroundColor: Colors.white,
            snackPosition: SnackPosition.BOTTOM,
            maxWidth: Get.width,
          );
          throw Exception();
        }
      } else {
        throw Exception("");
      }
    } catch (e) {
      Get.snackbar(
        'Faild',
        'Some thing wrong',
        colorText: Colors.black,
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        maxWidth: Get.width,
      );
      throw Exception();
    }
  }

  Future<List<PostModel>> getAllProducts() async {
    try {
      final request = ApiRequest(
          url: ApiUrl.posts, headers: {"Accept": "Application/json"});
      final response = await api.get(request);
      final body = response.body;
      if (body is Map) {
        final success = response.body!['status'];
        print(success);
        if (success) {
          final List postsData = response.body!['data']['data'];
          print(postsData);
          final List<PostModel> temp = [];

          for (Map value in postsData) {
            temp.add(PostModel.fromMap(value as Map<String, dynamic>));
          }
          return temp;
        } else {
          Get.snackbar(
            'Faild',
            'Your email is password is wrong',
            colorText: Colors.black,
            backgroundColor: Colors.white,
            snackPosition: SnackPosition.BOTTOM,
            maxWidth: Get.width,
          );
          throw Exception();
        }
      } else {
        throw Exception("");
      }
    } catch (e) {
      print(e);
      Get.snackbar(
        'Faild',
        'Some thing wrong',
        colorText: Colors.black,
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        maxWidth: Get.width,
      );
      throw Exception();
    }
  }
}
