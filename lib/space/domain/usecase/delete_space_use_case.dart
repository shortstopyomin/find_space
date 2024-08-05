import 'package:find_space/config/injection_container.dart';
import 'package:find_space/space/domain/entity/space.dart';
import 'package:find_space/space/domain/repository/space_repository.dart';
import 'package:find_space/space/domain/use_case.dart';

class DeleteSpaceUseCase extends UseCase<Future<void>, int> {
  final SpaceRepository repository = getIt();

  @override
  Future<void> call(int params) {
    return repository.deleteSpace(id: params);
  }
}
