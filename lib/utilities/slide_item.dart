import 'package:flutter/material.dart';
import 'package:quotation/utilities/slide.dart';

class SlideItem extends StatelessWidget {
  final int index;
  const SlideItem({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(slideList[index].img))),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            slideList[index].desc,style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
