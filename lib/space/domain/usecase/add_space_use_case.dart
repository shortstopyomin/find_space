import 'package:find_space/config/injection_container.dart';
import 'package:find_space/space/domain/entity/space.dart';
import 'package:find_space/space/domain/repository/space_repository.dart';
import 'package:find_space/space/domain/use_case.dart';

class AddSpaceUseCase extends UseCase<Future<void>, Space> {
  final SpaceRepository repository = getIt();

  @override
  Future<void> call(Space params) async {
    return repository.addSpace(space: params);
  }
}
