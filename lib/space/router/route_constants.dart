class RoutePath {
  static const spaces = '/spaces';
  // sub-route path may not start or end with "/"
  static const createSpace = 'createSpace';
  static const spaceDetail = 'dramas/:${RouteParam.spaceId}';
  static const spaceEdit = 'spaceEdit';

}

class RouteName {
  static const spaces = 'spaces';
  static const createSpace = 'createSpace';
  static const spaceDetail = 'space/:${RouteParam.spaceId}';
  static const spaceEdit = 'spaceEdit';
}

class RouteParam {
  static const spaceId = 'spaceId';
}
