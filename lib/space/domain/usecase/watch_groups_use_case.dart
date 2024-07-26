import 'package:find_space/config/injection_container.dart';
import 'package:find_space/space/domain/entity/group.dart';
import 'package:find_space/space/domain/entity/space.dart';
import 'package:find_space/space/domain/repository/space_repository.dart';
import 'package:find_space/space/domain/use_case.dart';

class WatchGroupsUseCase
    extends VoidParamUseCase<Stream<List<Group>>> {
  final SpaceRepository repository = getIt();

  @override
  Stream<List<Group>> call() {
    return repository.watchGroups();
  }
}
