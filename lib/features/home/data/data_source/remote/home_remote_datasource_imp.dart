import 'package:clean_arch_bookly_app/constants.dart';
import 'package:clean_arch_bookly_app/core/services/api_service.dart';
import 'package:clean_arch_bookly_app/core/network/app_end_pointes.dart';
import 'package:clean_arch_bookly_app/core/services/hive_service.dart';
import 'package:clean_arch_bookly_app/features/home/data/data_source/remote/home_remote_datasource.dart';
import 'package:clean_arch_bookly_app/features/home/data/models/books_model/books_model.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/books.dart';

class HomeRemoteDatasourceImp extends HomeRemoteDatasource {
  final ApiService apiService;
  final HiveService hiveService;

  HomeRemoteDatasourceImp({
    required this.apiService,
    required this.hiveService,
  });
  @override
  Future<BooksModel> getBooks() async {
    final response = await apiService
        .getData(endPoint: AppEndPointes.baseUrl, queryParameters: {
      'Filtering': 'free-ebooks',
      'q': 'computer science',
    });

    // printFullText(response.data.toString());
    final books = BooksModel.fromJson(response.data);
    hiveService.saveLocalData<Books>(books, bookBox);
    return books;
  }

  @override
  Future<BooksModel> getNewsetBooks() async {
    final response = await apiService.getData(
      endPoint: AppEndPointes.baseUrl,
      queryParameters: {
        'Filtering': 'free-ebooks',
        'Sorting': 'newest',
        'q': 'subject:Programming',
      },
    );
    final books = BooksModel.fromJson(response.data);
    hiveService.saveLocalData<Books>(books, newsetBookBox);
    return books;
  }

  @override
  Future<BooksModel> getSimilerBooks() async {
    final response = await apiService
        .getData(endPoint: AppEndPointes.baseUrl, queryParameters: {
      'Filtering': 'free-ebooks',
      'Sorting': 'relevance',
      'q': 'subject:Programming',
    });
    final books = BooksModel.fromJson(response.data);
    hiveService.saveLocalData<Books>(books, simillerBookBox);
    return books;
  }
}
