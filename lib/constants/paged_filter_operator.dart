enum PagedFilterOperator {
  EQ('eq', '\$eq'),
  GT('gt', '\$gt'),
  GTE('gte', '\$gte'),
  IN('in', '\$in'),
  NULL('null', '\$null'),
  LT('lt', '\$lt'),
  LTE('lte', '\$lte'),
  BTW('btw', '\$btw'),
  NOT('not', '\$not'),
  ILIKE('ilike', '\$ilike'),
  SW('sw', '\$sw'),
  undefined('undefined', '');

  const PagedFilterOperator(this.code, this.displayName);
  final String code;
  final String displayName;

  factory PagedFilterOperator.getByCode(String code) {
    return PagedFilterOperator.values.firstWhere(
      (value) => value.code == code,
      orElse: () => PagedFilterOperator.undefined,
    );
  }
}
