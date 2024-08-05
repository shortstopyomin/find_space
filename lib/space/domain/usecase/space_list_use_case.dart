import 'package:find_space/config/injection_container.dart';
import 'package:find_space/space/domain/entity/space.dart';
import 'package:find_space/space/domain/repository/space_repository.dart';
import 'package:find_space/space/domain/use_case.dart';

class SpaceListUseCase
    extends VoidParamUseCase<Future<List<Space?>>> {
  final SpaceRepository repository = getIt();

  @override
  Future<List<Space?>> call() async {
    return repository.getSpaces();
  }

  Future<List<Space>> fetchSpacesInSpaces({
    required int groupId,
  }) async {
    return repository.fetchSpacesInGroup(groupId: groupId);
  }

  Stream<List<Space>> watchSpaces() {
    return repository.watchSpaces();
  }
}
