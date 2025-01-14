import 'package:clean_arch_bookly_app/core/services/api_service.dart';
import 'package:clean_arch_bookly_app/core/network/app_end_pointes.dart';
import 'package:clean_arch_bookly_app/features/home/data/data_source/remote/home_remote_datasource.dart';
import 'package:clean_arch_bookly_app/features/home/data/models/books_model/books_model.dart';

class HomeRemoteDatasourceImp extends HomeRemoteDatasource {
  final ApiService apiService;

  HomeRemoteDatasourceImp({required this.apiService});
  @override
  Future<BooksModel> getBooks() async {
    final response =
        await apiService.getData(endPoint: AppEndPointes.getBooksEndPoine);
    return BooksModel.fromJson(response.data);
  }
}
