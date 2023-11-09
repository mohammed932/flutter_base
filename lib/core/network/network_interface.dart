abstract class BaseNetwork {
  Future get(String endPoint, {Map<String, dynamic>? queryParameters});
  Future post(String endPoint, {Map<String, dynamic>? data});
  Future delete(String endPoint);
  Future update(String endPoint);
}
