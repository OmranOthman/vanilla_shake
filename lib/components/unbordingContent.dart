import 'package:vanilla_shake/core/const/app_assets.dart';

class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Meet your perfect match',
      image: AppAssets.Couple,
      discription: "Please read our privacy policy "
          "and policy regarding before registering. "
  ),
  UnbordingContent(
      title: 'Meet new friends',
      image: AppAssets.Friends,
      discription: "Please read our privacy policy "
          "and policy regarding before registering. "
  ),
  UnbordingContent(
      title: 'Make your playlist ',
      image: AppAssets.Eminem,
      discription: "Please read our privacy policy "
          "and policy regarding before registering. "
  ),
];