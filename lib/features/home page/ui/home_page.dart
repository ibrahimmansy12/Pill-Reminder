import 'package:flutter/material.dart';
import '../../home%20page/ui/widgets/button_text_cotainer.dart';
import '../../home%20page/ui/widgets/home_floating_action_button.dart';
import '../../home%20page/ui/widgets/top_text_container.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sizer/sizer.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        floatingActionButton:const HomeFloatingActionButton(),
        body: Padding(
          padding: EdgeInsets.all(2.h),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TopTextContainer(),
              Expanded(child: BottomTextContaner()),
              
            ],
          ),
        ),
      ),
    );
  }
}






