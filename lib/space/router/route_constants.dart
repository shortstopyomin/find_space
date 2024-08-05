class RoutePath {
  static const spaces = '/spaces';
  // sub-route path may not start or end with "/"
  static const createSpace = 'createSpace';
  static const spaceDetail = ':${RouteParam.spaceId}';
  static const spaceEdit = 'spaceEdit';

}

class RouteName {
  static const spaces = 'spaces';
  static const createSpace = 'createSpace';
  static const spaceDetail = ':${RouteParam.spaceId}';
  static const spaceEdit = ':${RouteParam.spaceId}/spaceEdit';
}

class RouteParam {
  static const spaceId = 'spaceId';
  static const groups = 'groups';
  static const space = 'space';
}
