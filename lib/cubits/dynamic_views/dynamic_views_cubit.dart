import 'package:dynamic_view_with_api/data/models/dynamic_view_model/dynamic_view_model.dart';
import 'package:dynamic_view_with_api/data/repositories/views_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'dynamic_views_state.dart';

class DynamicViewsCubit extends Cubit<DynamicViewsState> {
  DynamicViewsCubit({required this.viewsRepository})
      : super(DynamicViewsInitial()) {
    fetchData();
  }
  ViewsRepository viewsRepository;

  void fetchData() async {
    emit(DynamicViewsInProgress());
    try {
      List<DynamicViewModel> views = await viewsRepository.getViews();
      emit(DynamicViewsInSuccess(views: views));
    } catch (e) {
      emit(DynamicViewsInFailure(errorText: e.toString()));
    }
  }
}
