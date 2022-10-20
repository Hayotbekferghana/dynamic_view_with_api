import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dynamic_view_with_api/data/models/dynamic_view_model/dynamic_view_model.dart';
import 'package:dynamic_view_with_api/utils/constants.dart';
import 'package:flutter/widgets.dart';

class ApiProvider {
  Future<List<DynamicViewModel>> getDynamicViews() async {
    try {
      Response response = await Dio().get(apiUrl);

      if (response.statusCode == HttpStatus.ok) {
        List<DynamicViewModel> views = (response.data["dynamic_views"] as List?)
                ?.map((e) => DynamicViewModel.fromJson(e))
                .toList() ??
            [];
        return views;
      } else {
        throw Exception();
      }
    } catch (e) {
      debugPrint(e.toString());
      throw Exception(e);
    }
  }
}
