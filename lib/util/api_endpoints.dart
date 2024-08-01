class ApiEndpoints {
  static const baseURL = 'https://staging-admin.slashdeals.lk/api/';

  /// explore vendors
  static String vendors = "${baseURL}get-company-by-category/4";
  /// explore coupons
  static String coupon = "${baseURL}get-public-coupons-by-category/4";
}
