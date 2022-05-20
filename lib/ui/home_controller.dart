import 'package:get/get.dart';
import 'package:retro_Sample/data/model/user_dto.dart';
import 'package:retro_Sample/data/repositories/retrofit_repositories.dart';

class HomeController extends GetxController {
  final RetrofitRepository repository = RetrofitRepository();

  RxList<User> user = <User>[].obs;

  HomeController() {
    getPostApiCall();
  }

  Future<void> getPostApiCall() async {
    var result = await repository.getClient();
    user.value = result;
  }
}
