import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signlanguage/core/constant/colors.dart';
import '../../../controller/onbording_contoller.dart';
import '../../../core/constant/staticdata.dart';

class CustomSliderOnBordring extends GetView<OnBordingControllerImp> {
  const CustomSliderOnBordring({Key? key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onpagechange(val);
      },
      itemCount: StaticData().onBordingData.length,
      itemBuilder: (context, i) {
        return Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Center(
              child: Text(
                StaticData().onBordingData[i].title,
                style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 25, fontFamily: "metropolis"),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Image.asset(
              StaticData().onBordingData[i].imageurl,
              width: 290,
              height: 290,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                StaticData().onBordingData[i].subtitle,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20,color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }
}
