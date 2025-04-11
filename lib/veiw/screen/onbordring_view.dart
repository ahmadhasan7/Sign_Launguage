import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signlanguage/controller/onbording_contoller.dart';
import '../widget/onbordring_widget/CoustomElevetedButtom.dart';
import '../widget/onbordring_widget/Coustom_Dotet.dart';
import '../widget/onbordring_widget/Coustom_Slider.dart';


class OnBordringView extends StatelessWidget {
  const OnBordringView({Key? key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBordingControllerImp());
    return const  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: const CustomSliderOnBordring(),
              flex: 3,
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomDotet(),
                    SizedBox(height: 20),
                    CustomElevetedButtomOnBording(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
