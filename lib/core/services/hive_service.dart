import 'package:hive/hive.dart';

class HiveService {
  void saveLocalData<Type>(var data, String boxName) {
    var box = Hive.box<Type>(boxName);
    box.add(data);
  }

  fetchLocalData<Type>({required String boxName}) {
    var box = Hive.box<Type>(boxName);
    return box.isEmpty ? null : box.values.first;
  }
}
