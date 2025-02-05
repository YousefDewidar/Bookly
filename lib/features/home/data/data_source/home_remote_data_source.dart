import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchNewestBooks();
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchSimilarBooks({required String cat});
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  ApiService apiService;
  HomeRemoteDataSourceImpl({required this.apiService});

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
    return getBooksList(data);
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=computers&Sorting=newest');
    return getBooksList(data);
  }

  @override
  Future<List<BookEntity>> fetchSimilarBooks({required String cat}) async {
    var data =
        await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=$cat');
    return getBooksList(data);
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var item in data['items']) {
      books.add(BookModel.fromJson(item));
    }
    return books;
  }
}
