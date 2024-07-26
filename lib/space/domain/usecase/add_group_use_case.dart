import 'package:find_space/config/injection_container.dart';
import 'package:find_space/space/domain/entity/group.dart';
import 'package:find_space/space/domain/entity/space.dart';
import 'package:find_space/space/domain/repository/space_repository.dart';
import 'package:find_space/space/domain/use_case.dart';

class AddGroupUseCase extends UseCase<Future<int>, Group> {
  final SpaceRepository repository = getIt();

  @override
  Future<int> call(Group params) async {
    return repository.addGroup(group: params);
  }
}
