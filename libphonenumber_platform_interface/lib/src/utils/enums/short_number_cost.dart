///
/// * @enum {number} Cost categories of short numbers.
/// */
/// i18n.phonenumbers.ShortNumberInfo.ShortNumberCost = {
///  TOLL_FREE: 0,
///  STANDARD_RATE: 1,
///  PREMIUM_RATE: 2,
///  UNKNOWN_COST: 3
/// };

enum ShortNumberCost {
  TOLL_FREE,
  STANDARD_RATE,
  PREMIUM_RATE,
  UNKNOWN_COST,
}

extension ShortNumberCostExt on ShortNumberCost {
  static ShortNumberCost fromIndex(int index) {
    return ShortNumberCost.values.singleWhere(
      (element) => element.value == index,
      orElse: () => ShortNumberCost.UNKNOWN_COST,
    );
  }

  int get value {
    switch (this) {
      case ShortNumberCost.TOLL_FREE:
        return 0;
      case ShortNumberCost.STANDARD_RATE:
        return 1;
      case ShortNumberCost.PREMIUM_RATE:
        return 2;
      default:
        return 3;
    }
  }
}
