import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/books.dart';
import 'package:hive/hive.dart';

class HiveService {
  void saveLocalData(var data, String boxName) {
    var box = Hive.box<Books>(boxName);
    box.add(data);
  }
}
