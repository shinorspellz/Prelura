double calculateDiscountedAmount({required double price, required int discount}) {
  if (isValidDiscount(discount)) {
    final discountAmount = price * (discount) / 100;
    return price - discountAmount;
  }
  return price;
}

bool isValidDiscount(int discount) {
  //Original was 5 minimum
  return discount > 0;
}
