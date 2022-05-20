import 'package:flutter/material.dart';

import '../data/model/user_dto.dart';

class ListWidget extends StatelessWidget {
  ListWidget({Key? key, required this.posts}) : super(key: key);

  List<User> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: posts.length,
        padding: const EdgeInsets.all(8),
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            child: ListTile(
              title: Text(
                posts[index].title!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                posts[index].completed!.toString(),
              ),
            ),
          );
        });
  }
}
