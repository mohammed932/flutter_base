mixin ValidationMixin {
  bool isValid(String value) {
    return value.isNotEmpty;
  }
}
