import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon/controllers/home_page_controller.dart';
import 'package:pokemon/models/page_data.dart';

final homePageControllerProvider = StateNotifierProvider<HomePageController, HomePageData>((ref) {
  return HomePageController(
    HomePageData.initial()
    );
});
