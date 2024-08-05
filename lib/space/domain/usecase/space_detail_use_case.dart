import 'package:find_space/config/injection_container.dart';
import 'package:find_space/space/domain/entity/space.dart';
import 'package:find_space/space/domain/repository/space_repository.dart';
import 'package:find_space/space/domain/use_case.dart';

class SpaceDetailUseCase extends UseCase<Stream<Space?>, int> {
  final SpaceRepository repository = getIt();

  @override
  Stream<Space?> call(int params) {
    return repository.watchSpace(id: params);
  }
}
