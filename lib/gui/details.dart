import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/word.dart';

class Details extends StatelessWidget {
  Details({Key? key, this.dataModel}) : super(key: key);
  DataModel? dataModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(dataModel!.word!),
          Image.network(
            dataModel!.url!,
            height: 200,
            width: 200,
          )
        ],
      ),
    );
  }
}
