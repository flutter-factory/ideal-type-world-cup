enum MediaType {
  all('ALL', ''),
  video('VIDEO', '동영상'),
  image('IMAGE', '사진'),
  undefined('undefined', '');

  const MediaType(this.code, this.displayName);
  final String code;
  final String displayName;

  factory MediaType.getByCode(String code) {
    return MediaType.values.firstWhere(
      (value) => value.code == code,
      orElse: () => MediaType.undefined,
    );
  }
}
