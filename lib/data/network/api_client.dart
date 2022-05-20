import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../model/user_dto.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com/")
abstract class ApiClient{
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET('todos/')
  Future<List<User>> getUsers();
}