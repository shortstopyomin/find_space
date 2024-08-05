import 'package:find_space/config/injection_container.dart';
import 'package:find_space/space/domain/entity/group.dart';
import 'package:find_space/space/domain/entity/space.dart';
import 'package:find_space/space/domain/repository/space_repository.dart';
import 'package:find_space/space/domain/use_case.dart';

class WatchSpacesUseCase
    extends VoidParamUseCase<Stream<List<Space>>> {
  final SpaceRepository repository = getIt();

  @override
  Stream<List<Space>> call() {
    return repository.watchSpaces();
  }

  Stream<List<Space>> watchSpacesInGroup(int? groupId) {
    return repository.watchSpacesInGroup(groupId: groupId);
  }
}
