part of '_repositories.dart';

class BookmarkRepositoyImpl implements BookmarkRepository {
  BookmarkRepositoyImpl(this._remoteDataSource, this._localDataSource);
  final BookmarkRemoteDataSource _remoteDataSource;
  final BookmarkLocalDataSource _localDataSource;

  @override
  Future<Decide<Failure, Parsed<List<BookmarkModel>>>> getAllBookmark() {
    return apiCall(_remoteDataSource.getAllBookmark());
  }

  @override
  // ignore: lines_longer_than_80_chars
  Future<Decide<Failure, Parsed<List<BookmarkModel>>>> getAllBookmarkFromCache() {
    return apiCall(_localDataSource.getAllBookmark());
  }
}
