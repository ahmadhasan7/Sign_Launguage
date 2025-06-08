import 'package:signlanguage/core/constant/image.dart';

import '../../data/model/onbordring_model.dart';

class StaticData {
  final String baseurl='https://4213-185-177-125-94.ngrok-free.app';
  List<OnBordringModel> onBordingData = [
    OnBordringModel(
        title: "How to Say “Water” in Baby Sign Language",
        subtitle:
            "The sign for “water,” involves forming a W with your three fingers (thumb, index, and middle finger), and tapping your index finger on your chin.",
        imageurl: AppImage.image3),
    OnBordringModel(
        title: "How to Say “Drink” in Baby Sign Language",
        subtitle:
            "The sign for “drink” is pretty easy for babies to learn. It involves making a C-shaped hand and mimicking the action of tilting a cup into your mouth.",
        imageurl: AppImage.image2),
    OnBordringModel(
        title: "How to Say “Eat” in Baby Sign Language",
        subtitle:
            "To sign the word “eat” in baby sign language, bring your fingertips to your mouth as if you’re putting food into your mouth",
        imageurl: AppImage.image1),
  ];
}
