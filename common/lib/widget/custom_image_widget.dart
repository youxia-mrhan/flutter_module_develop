import 'package:common/page/common_index.dart';
import 'package:common/res/common_img_path.dart';
import 'package:flutter/material.dart';

class CustomImageWidget extends StatelessWidget {
  const CustomImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(CommonImgPath.ts,package: PACKAGE_COMMON_NAME);
  }
}
