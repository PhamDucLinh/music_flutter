import 'package:dio/dio.dart';
import '../base/base_viewmodel.dart';
import '../models/food_model.dart';
import '../remote/service/response/news_response.dart';

class HomeVM extends BaseViewModel {
  final String title;
  final String image;
  final String description;

  HomeVM({
    required this.title,
    required this.description,
    required this.image,
  });

  List<HomeVM> dataList = [
    HomeVM(
      title: 'Music 1',
      description: 'Description',
      image: 'https://png.pngtree.com/element_our/png_detail/20181022/music-and-live-music-logo-with-neon-light-effect-vector-png_199406.jpg',
    ),
    HomeVM(
      title: 'Music 2',
      description: 'Description2',
      image: 'https://haycafe.vn/wp-content/uploads/2022/03/Avatar-am-nhac.jpg',
    ),
  ];

  @override
  void onInit() {
    // TODO: implement onInit
  }

}
