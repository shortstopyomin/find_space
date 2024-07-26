abstract class UseCase<ReturnType, ParamType> {
  ReturnType call(ParamType params);
}

abstract class VoidParamUseCase<ReturnType> {
  ReturnType call();
}
