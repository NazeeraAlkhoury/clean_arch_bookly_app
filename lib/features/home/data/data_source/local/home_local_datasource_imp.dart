import 'package:clean_arch_bookly_app/constants.dart';
import 'package:clean_arch_bookly_app/core/services/hive_service.dart';
import 'package:clean_arch_bookly_app/features/home/data/data_source/local/home_local_datasource.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/books.dart';

class HomeLocalDatasourceImp extends HomeLocalDatasource {
  final HiveService hiveService;

  HomeLocalDatasourceImp({required this.hiveService});
  @override
  Books? featchBooks() {
    return hiveService.fetchLocalData<Books>(boxName: bookBox);
  }

  @override
  Books? featchNewsetBooks() {
    return hiveService.fetchLocalData<Books>(boxName: newsetBookBox);
  }

  @override
  Books? featchSimilerBooks() {
    return hiveService.fetchLocalData<Books>(boxName: simillerBookBox);
  }
}
