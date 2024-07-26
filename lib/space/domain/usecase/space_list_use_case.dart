import 'package:find_space/config/injection_container.dart';
import 'package:find_space/space/domain/entity/space.dart';
import 'package:find_space/space/domain/repository/space_repository.dart';
import 'package:find_space/space/domain/use_case.dart';

class GetSpacesUseCase
    extends VoidParamUseCase<Future<List<Space?>>> {
  final SpaceRepository repository = getIt();

  @override
  Future<List<Space?>> call() async {
    return repository.getDramas();
  }

  Future<List<String?>> getGroups() async {
    return repository.getGroups();
  }

  Stream<List<Space>> watchSpaces() {
    return repository.watchSpaces();
  }
}
