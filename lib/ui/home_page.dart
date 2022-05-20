import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:retro_Sample/ui/home_controller.dart';

import 'list_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Retrofit'),
      ),
      body: Obx(() => controller.user.isNotEmpty
          ? ListWidget(
              posts: controller.user.value,
            )
          : const SpinKitHourGlass(
              color: Colors.blueGrey,
              size: 64,
            )),
    );
  }
}
