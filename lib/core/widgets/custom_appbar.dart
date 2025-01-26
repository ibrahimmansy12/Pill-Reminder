import 'package:flutter/material.dart';
import '../theming/text_style.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    this.title,
  });
  final String? title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios)),
      centerTitle: true,
      title: Text(
        title!,
        style: AppTextStyles.font20TextcolormulishNormal,
      ),
    );
  }

  //Size get preferredSize => const Size.fromHeight(100);
  @override
  Size get preferredSize => const Size.fromHeight(100);
}
