import 'package:dynamic_view_with_api/data/models/dynamic_view_model/dynamic_view_model.dart';
import 'package:dynamic_view_with_api/data/services/api_provider.dart';

class ViewsRepository {
  ViewsRepository({required this.apiProvider});
  ApiProvider apiProvider;

  Future<List<DynamicViewModel>> getViews() async =>
      apiProvider.getDynamicViews();
}
