///
/// * Enumeration CountryCodeSource.
/// * @enum {number}
///
/// i18n.phonenumbers.PhoneNumber.CountryCodeSource = {
///  UNSPECIFIED: 0,
///  FROM_NUMBER_WITH_PLUS_SIGN: 1,
///  FROM_NUMBER_WITH_IDD: 5,
///  FROM_NUMBER_WITHOUT_PLUS_SIGN: 10,
///  FROM_DEFAULT_COUNTRY: 20
/// };

enum CountryCodeSource {
  UNSPECIFIED,
  FROM_NUMBER_WITH_PLUS_SIGN,
  FROM_NUMBER_WITH_IDD,
  FROM_NUMBER_WITHOUT_PLUS_SIGN,
  FROM_DEFAULT_COUNTRY,
}

extension CountryCodeSourceExt on CountryCodeSource {
  static CountryCodeSource fromIndex(int index) {
    return CountryCodeSource.values.singleWhere(
      (element) => element.value == index,
      orElse: () => CountryCodeSource.UNSPECIFIED,
    );
  }

  int get value {
    switch (this) {
      case CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN:
        return 1;
      case CountryCodeSource.FROM_NUMBER_WITH_IDD:
        return 5;
      case CountryCodeSource.FROM_NUMBER_WITHOUT_PLUS_SIGN:
        return 10;
      case CountryCodeSource.FROM_DEFAULT_COUNTRY:
        return 20;
      default:
        return 0;
    }
  }
}
