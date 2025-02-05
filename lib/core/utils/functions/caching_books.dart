import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

void cacheBooks(List<BookEntity> bookList, String boxName) {
  var box = Hive.box<BookEntity>(boxName);
  box.addAll(bookList);
}
