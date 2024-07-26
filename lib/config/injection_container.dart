import 'package:find_space/core/data/service/space_database.dart';
import 'package:find_space/space/cubit/spaces_cubit.dart';
import 'package:find_space/space/data/space_repository_impl.dart';
import 'package:find_space/space/domain/repository/space_repository.dart';
import 'package:find_space/space/domain/usecase/add_group_use_case.dart';
import 'package:find_space/space/domain/usecase/add_space_use_case.dart';
import 'package:find_space/space/domain/usecase/space_list_use_case.dart';
import 'package:find_space/space/domain/usecase/watch_groups_use_case.dart';
import 'package:find_space/space/permission/permission_handler_permission_service.dart';
import 'package:find_space/space/permission/permission_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  await _registerServices();
  await _registerRepositories();
  await _registerUseCases();
}

Future<void> _registerServices() async {
  getIt
    ..registerSingleton<PermissionService>(PermissionHandlerPermissionService())
    ..registerSingleton<SpaceDatabase>(SpaceDatabase());
}

Future<void> _registerRepositories() async {
  getIt.registerSingleton<SpaceRepository>(
    SpaceRepositoryImpl(
      spaceDatabase: getIt(),
    ),
  );
}

Future<void> _registerUseCases() async {
  getIt.registerFactory(() => GetSpacesUseCase());
  getIt.registerFactory(() => AddSpaceUseCase());
  getIt.registerFactory(() => AddGroupUseCase());
  getIt.registerFactory(() => WatchGroupsUseCase());
}
