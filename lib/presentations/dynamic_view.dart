import 'package:dynamic_view_with_api/cubits/dynamic_views/dynamic_views_cubit.dart';
import 'package:dynamic_view_with_api/data/models/dynamic_view_model/dynamic_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DynamicView extends StatelessWidget {
  const DynamicView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DynamicViewsCubit, DynamicViewsState>(
        builder: (context, state) {
          if (state is DynamicViewsInProgress) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (state is DynamicViewsInSuccess) {
            List<DynamicViewModel> views = state.views;
            return ListView(
              children: List.generate(
                views.length,
                (index) => Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 0),
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: Text(
                    views[index].color.toString(),
                  ),
                ),
              ),
            );
          } else if (state is DynamicViewsInFailure) {
            return Center(
              child: Text(
                state.errorText,
                style: const TextStyle(color: Colors.black, fontSize: 23),
              ),
            );
          }
          return const Center(
            child: Text("else holat"),
          );
        },
      ),
    );
  }
}
