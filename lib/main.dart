import 'package:dynamic_view_with_api/cubits/dynamic_views/dynamic_views_cubit.dart';
import 'package:dynamic_view_with_api/data/repositories/views_repository.dart';
import 'package:dynamic_view_with_api/data/services/api_provider.dart';
import 'package:dynamic_view_with_api/presentations/dynamic_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ViewsRepository(apiProvider: ApiProvider()),
      child: BlocProvider(
        create: (context) =>
            DynamicViewsCubit(viewsRepository: context.read<ViewsRepository>()),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const DynamicView(),
        ),
      ),
    );
  }
}
