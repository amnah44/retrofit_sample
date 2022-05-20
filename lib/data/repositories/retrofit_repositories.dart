import 'package:dio/dio.dart';
import 'package:retro_Sample/data/model/user_dto.dart';

import '../network/api_client.dart';

class RetrofitRepository {
  Future<List<User>> getClient() {
    var _client = ApiClient(Dio(BaseOptions(contentType: "application/json")));

    return _client.getUsers();
  }
}
