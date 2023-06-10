import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../auth/remote_data_source.dart';
import '../core/common/models/post_model.dart';

class HomePageController extends GetxController {
  final RxList<PostModel> posts = RxList([]);
  final RxBool loading = RxBool(false);

  void switchLoading() {
    loading.value = !loading.value;
  }

  Future<void> getPost() async {
    try {
      switchLoading();
      final response = await RemoteDataSource().getAllProducts();
      switchLoading();
      posts.addAll(response);
    } catch (e) {
      Get.snackbar(
        'Faild',
        'Some thing wrong',
        colorText: Colors.black,
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        maxWidth: Get.width,
      );
    }
  }

  @override
  void onInit() {
    super.onInit();
    getPost();
  }
}
