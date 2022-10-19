import 'dart:convert';
import 'dart:io';

import 'package:dynamic_view_with_api/data/models/dynamic_view_model/dynamic_view_model.dart';
import 'package:dynamic_view_with_api/utils/constants.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class ApiProvider {
  Future<List<DynamicViewModel>> getDynamicViews() async {
    try {
      Response response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == HttpStatus.ok) {
        Map json = jsonDecode(response.body)['dynamic_views'];
        List<DynamicViewModel> views = (json as List?)
                ?.map((e) => DynamicViewModel.fromJson(e))
                .toList() ??
            [];
        return views;
      } else {
        throw Exception();
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
