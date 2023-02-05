class PaginateQuery {
  int? page;
  int? limit;
  List<List<String>>? sortBy;
  List<String>? searchBy;
  String? search;
  Map<String, dynamic>? filter;
  String? path;

  PaginateQuery({
    this.page,
    this.limit,
    this.sortBy,
    this.searchBy,
    this.search,
    this.filter,
    this.path,
  });

  Map<String, dynamic> toQueryMap() {
    return {
      'page': page.toString(),
      'limit': limit.toString(),
      'sortBy': sortBy,
      'searchBy': searchBy,
      'search': search,
      'filter': filter,
      'path': path,
    };
  }
}
