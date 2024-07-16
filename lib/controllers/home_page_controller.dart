import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:pokemon/models/page_data.dart';
import 'package:pokemon/services/http_service.dart';

class HomePageController extends StateNotifier<HomePageData> {
  final GetIt _getIt = GetIt.instance;

  late HTTpService _htTpService;

  HomePageController(
    super._state,
  ) {
    _htTpService = _getIt.get<HTTpService>();
    _setup();
  }

  Future<void> _setup() async {
    loadData();
  }

  Future<void> loadData() async {
    if (state.data == null) {
      Response? res = await _htTpService
          .get("https://pokeapi.co/api/v2/pokemon?limit=20&offset=0");
      print(res?.data);
    } else {}
  }
}
